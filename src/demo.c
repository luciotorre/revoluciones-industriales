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

#define F_CPU 16000000
#include <avr/io.h>
#include <util/delay.h>

/*
 * Assumptions:
 * 	- LED connected to PORTB
 * 	- F_CPU is defined to be your cpu speed (preprocessor define)
 */

int main (void)
{
	/* set PORTB for output*/
	DDRB = 0xFF;

	while (1) {
		/* set PORTB high */
		PORTB = 0xFF;
		_delay_ms(500);

		/* set PORTB low */
		PORTB = 0x00;
		_delay_ms(500);
	}
	return 0;
}

