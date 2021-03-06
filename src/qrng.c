/* Michael Free April 2018 */
/* The goal of this code is to use the values of timers along with bitmixing to generate random numbers*/

#include <util/delay.h>

#include <qrng/timer0.h>
#include <qrng/timer1.h>
#include <qrng/timer2.h>
#include <qrng/interrupt.h>
#include <qrng/serial.h>
#include <qrng/lock.h>

#include <stdint.h>

typedef uint32_t u32 ;
typedef uint16_t u16 ;
typedef uint8_t  u08 ;

typedef union __cast
{
  u16 val ;
  struct
  {
    u08 hi ;
    u08 lo ;
  } ;
} cast ;

static volatile cast prev = { 0 } ;
static volatile cast curr = { 0 } ;

static volatile _Bool next = 0 ; /* Who is next in line? */

ISR ( TIMER1_CAPT_vect ) // The actual Timer1 Input Capture Event Interrupt Service Routine
{
  curr . val = timer1_read_capture (  ) ; /* ICR1 is a special register which gets set to Timer1's counter TCNT1 upon entry */
  lock_release ( & next ) ;
}

ISR ( INT0_vect )
{
  curr . hi = timer0_read (  ) ;
  curr . lo = timer2_read (  ) ;
  lock_release ( & next ) ;
}

int
main ( void )
{
  cast mix ;
  cast temp ;

  disable_interrupts (  ) ;

  _delay_ms ( 50 ) ; /* Wait for the processors voltage to rise.  */

  /* Setup required facilities.  */

  serial_init (  ) ;
  timer0_init (  ) ;
  timer1_init (  ) ;
  timer2_init (  ) ;
  enable_int0 (  ) ;
  timer1_enable_capture  (  ) ;

  enable_interrupts (  ) ;

  /* BEGIN */

  lock_acquire ( & next ) ;

  mix . hi = curr . hi ;
  mix . lo = curr . lo ;

  while ( 1 )
  {
    lock_acquire ( & next ) ;

    temp . val = curr . val ;

    mix . lo ^= prev . hi ^ temp . lo ;

    serial_wait (  ) ;         /* try and grab an empty buffer, then           */
    serial_send ( mix . lo ) ; /* send the byte using the empty buffer.        */

    prev . lo = temp . lo ;

    mix . hi ^= prev . lo ^ temp . hi ;
                               /* If this fails just move on to the next byte. */
    serial_empty (  ) ;        /* It shouldn't fail, unless the radioactive    */
    serial_send ( mix . hi ) ; /* source emits too quickly to keep up with     */

    prev . hi = temp . hi ;
  }

  return 0 ;
}
