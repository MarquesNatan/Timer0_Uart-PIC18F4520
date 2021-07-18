/*============================================================================*/
#include "display_lcd.h"
#include "../../pic18f4520/gpio/gpio.h"
#include "../../board/pinout/pinout.h"
/*============================================================================*/
#define _XTAL_FREQ  10000000
void LCD_WriteByte(uint8_t byte);

/*============================================================================*/
void LCD_Init( void ) 
{
    PORTB = 0x00; 
    // RS   RW  D7  D6  D5  D4  D3  D2  D1  D0
    // 0    0   0   0   1   0
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_RS_PORT, DISPLAY_LCD_RS_MASK);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D7_PORT, DISPLAY_LCD_D7_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D6_PORT, DISPLAY_LCD_D6_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D5_PORT, DISPLAY_LCD_D5_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D4_PORT, DISPLAY_LCD_D4_MASK);
    LCD_Command(0);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_RS_PORT, DISPLAY_LCD_RS_MASK);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D7_PORT, DISPLAY_LCD_D7_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D6_PORT, DISPLAY_LCD_D6_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D5_PORT, DISPLAY_LCD_D5_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D4_PORT, DISPLAY_LCD_D4_MASK);
    LCD_Command(0);
    
    // RS   RW  D7  D6  D5  D4   D3 D2 D1 D0
    // 0    0   0   0   1   0  | 0  0  0  0   
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_RS_PORT, DISPLAY_LCD_RS_MASK);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D7_PORT, DISPLAY_LCD_D7_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D6_PORT, DISPLAY_LCD_D6_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D5_PORT, DISPLAY_LCD_D5_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D4_PORT, DISPLAY_LCD_D4_MASK);
    LCD_Command(0);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_RS_PORT, DISPLAY_LCD_RS_MASK);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D7_PORT, DISPLAY_LCD_D7_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D6_PORT, DISPLAY_LCD_D6_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D5_PORT, DISPLAY_LCD_D5_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D4_PORT, DISPLAY_LCD_D4_MASK);
    LCD_Command(0);
    
    // RS   RW  D7  D6  D5  D4   D3 D2 D1 D0
    // 0    0   0   0   0   0  | 1  1  1 0
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_RS_PORT, DISPLAY_LCD_RS_MASK);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D7_PORT, DISPLAY_LCD_D7_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D6_PORT, DISPLAY_LCD_D6_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D5_PORT, DISPLAY_LCD_D5_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D4_PORT, DISPLAY_LCD_D4_MASK);
    LCD_Command(0);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_RS_PORT, DISPLAY_LCD_RS_MASK);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D7_PORT, DISPLAY_LCD_D7_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D6_PORT, DISPLAY_LCD_D6_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D5_PORT, DISPLAY_LCD_D5_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D4_PORT, DISPLAY_LCD_D4_MASK);
    LCD_Command(0);
    
    // RS   RW  D7  D6  D5  D4   D3 D2 D1 D0
    // 0    0   0   0   0   0  | 0  1   1   0
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_RS_PORT, DISPLAY_LCD_RS_MASK);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D7_PORT, DISPLAY_LCD_D7_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D6_PORT, DISPLAY_LCD_D6_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D5_PORT, DISPLAY_LCD_D5_MASK);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_D4_PORT, DISPLAY_LCD_D4_MASK);
    LCD_Command(0);
    
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_RS_PORT, DISPLAY_LCD_RS_MASK);
    
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D7_PORT, DISPLAY_LCD_D7_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D6_PORT, DISPLAY_LCD_D6_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D5_PORT, DISPLAY_LCD_D5_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_D4_PORT, DISPLAY_LCD_D4_MASK);
    LCD_Command(0);
     
}

/*============================================================================*/
void LCD_Command(uint8_t command) {

    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_EN_PORT, DISPLAY_LCD_EN_MASK);
    PIN_DIGITAL_WRITE(PIN_HIGH, DISPLAY_LCD_EN_PORT, DISPLAY_LCD_EN_MASK);
    __delay_ms(10);
    PIN_DIGITAL_WRITE(PIN_LOW, DISPLAY_LCD_EN_PORT, DISPLAY_LCD_EN_MASK);

}

/*============================================================================*/
void LCD_Byte(uint8_t byte) {

}
/*============================================================================*/