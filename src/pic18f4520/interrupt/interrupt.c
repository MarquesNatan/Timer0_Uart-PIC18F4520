/*============================================================================*/
#include "interrupt.h"
/*============================================================================*/
void Interrupt_GlobalEnable( void ) 
{
    RCONbits.IPEN = 0x01;
    INTCONbits.GIE_GIEH = 0x01;
    INTCONbits.PEIE_GIEL = 0x01;   
}
/*============================================================================*/