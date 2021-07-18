/*============================================================================*/
#ifndef DISPLAY_LCD_H
#define	DISPLAY_LCD_H
/*============================================================================*/
#include <xc.h> // include processor files - each processor file is guarded.  
#include <stdint.h>
/*============================================================================*/
/*============================================================================*/
#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */
/*============================================================================*/
    void LCD_Init( void );
    void LCD_Command(uint8_t command);
    void LCD_Byte(uint8_t byte);
/*============================================================================*/
#ifdef	__cplusplus
}
#endif /* __cplusplus */
#endif	/* DISPLAY_LCD_H */
/*============================================================================*/