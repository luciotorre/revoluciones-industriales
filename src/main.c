/* $CSK: lesson1.c,v 1.3 2009/05/17 06:22:44 ckuethe Exp $ */
/*
 * Copyright (c) 2008 Chris Kuethe <chris.kuethe@gmail.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>  /* for sei() */
#include <util/delay.h>     /* for _delay_ms() */

#include <avr/pgmspace.h>   /* required by usbdrv.h */
#include "usbdrv.h"

#include "pt.h"


char *currentDebugBuffer;
usbMsgLen_t usbFunctionSetup(uchar data[8])
{
usbRequest_t    *rq = (void *)data;
static uchar    replyBuf[8];

   usbMsgPtr = replyBuf;
   if(rq->bRequest == 0){  /* ECHO */
        replyBuf[0] = rq->wValue.bytes[0];
        replyBuf[1] = rq->wValue.bytes[1];
        return 2;
   }
   if(rq->bRequest == 1){  /* READ_DEBUG */
      if (currentDebugBuffer) {
         int i;
         for ( i = 0;
               i < 8 && *currentDebugBuffer;
               i++, currentDebugBuffer++) {
            replyBuf[i] = *currentDebugBuffer;
         }
         if ( ! *currentDebugBuffer ) {
            currentDebugBuffer = 0;
         }
         return i;
      } else {
         return 0;
      }
   }
   return 0;
}

#define DEBUG(pt, line) { \
   do { \
      ((pt)->lc) = __LINE__; \
      case __LINE__:; \
         if(currentDebugBuffer) { \
            return PT_WAITING; \
         } \
   } while(0); \
   currentDebugBuffer = line; \
   usbSetInterrupt(0, 0); \
   };








static int
light_control(struct pt *pt)
{
   PT_BEGIN(pt);
   DEBUG(pt, "HOLAAAAAAAAAAAAAAAAAAAAAAAAAA!\n");
   DEBUG(pt, "MUNDO!\n");
   PT_END(pt);
}

int main (void)
{
   uchar   i, lpt_rv = PT_WAITING;
   static struct pt lcpt;

   wdt_enable(WDTO_1S);
   /* Even if you don't use the watchdog, turn it off here. On newer devices,
    * the status of the watchdog (on/off, period) is PRESERVED OVER RESET!
    */
   /* RESET status: all port bits are inputs without pull-up.
    * That's the way we need D+ and D-. Therefore we don't need any
    * additional hardware initialization.
    */
   for (i = 0; i < 3; i++) {
      wdt_reset();
      _delay_ms(100);
      PORTD |= (1 << 3);
      _delay_ms(20);
      PORTD &= ~(1 << 3);
   }

   usbInit();
   usbDeviceDisconnect();  /* enforce re-enumeration, do this while interrupts are disabled! */
   i = 0;
   while(--i){             /* fake USB disconnect for > 250 ms */
      wdt_reset();
      _delay_ms(1);
   }
   usbDeviceConnect();
   sei();
   PT_INIT(&lcpt);
   for(;;){                /* main event loop */
      wdt_reset();
      usbPoll();
      if (lpt_rv != PT_ENDED) {
         lpt_rv = light_control(&lcpt);
      }
   }
   return 0;
}
