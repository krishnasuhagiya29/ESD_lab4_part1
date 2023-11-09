/*
 */
#include <mcs51/at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51/mcs51reg.h>
#include <mcs51/reg51.h>
#include <mcs51/8051.h>
#include <stdio.h>

#define SDA P1_7
#define SCL P1_6

#define set_SDA_low		SDA = 0
#define set_SDA_high	SDA = 1
#define set_SCL_low		SCL = 0
#define set_SCL_high	SCL = 1

int getchar (void)
{
    while (!RI);

    RI = 0;                         // clear RI flag
    return SBUF;                    // return character from SBUF
}

int putchar (int c)
{
    while (!TI);

    SBUF = c;           // load serial port with transmit value
    TI = 0;             // clear TI flag

    return c;
}

// Function Purpose: Produce approximate delay in given uSecs.
void delay(unsigned int count)
{
    unsigned int i;
   for(i=0;i<count;i++);
}


// Function Purpose: Set initial values of SCL and SDA pins
void I2C_init(void)
{
	// Make SDA and SCL pins input initially
	SDA = 1;
	SCL = 1;
}

// Function Purpose: I2C_Start sends start bit sequence
void I2C_Start(void)
{
	set_SCL_high;				// Make SCL pin high
	set_SDA_high;				// Make SDA pin High
	delay(50);	// Half bit delay
	set_SDA_low;				// Make SDA Low
	delay(50);	// Half bit delay
}

unsigned char I2C_Write_Byte(unsigned char Byte)
{
	unsigned char i;		// Variable to be used in for loop

	for(i=0;i<8;i++)		// Repeat for every bit
	{
		set_SCL_low;		// Make SCL pin low

		delay(50);	// Data pin should change it's value,
									// when it is confirm that SCL is low

		if((Byte<<i)&0x80)  // Place data bit value on SDA pin
			set_SDA_high;	// If bit is high, make SDA high
		else				// Data is transferred MSB first
			set_SDA_low;	// If bit is low, make SDA low

		delay(50);	// Toggle SCL pin
		set_SCL_high;				// So that slave can
		delay(50);	// latch data bit
    }

	// Get ACK from slave
	set_SCL_low;
    set_SDA_high;
    delay(50);
    set_SCL_high;
    delay(50);

	return SDA;
}

// Function Purpose: I2C_Read_Byte reads one byte
unsigned char I2C_Read_Byte(void)
{
	unsigned char i, d, RxData = 0;

	for(i=0;i<8;i++)
	{
		set_SCL_low;					// Make SCL pin low
		set_SDA_high;					// Don't drive SDA
		delay(50);		// Half bit delay
		set_SCL_high;					// Make SCL pin high
		delay(50);		// 1/4 bit delay
		d = SDA;					    // Capture Received Bit
		RxData = RxData|(d<<(7-i));   	// Copy it in RxData
		delay(50);		// 1/4 bit delay
	}

    return RxData;						// Return received byte
}

//Function : I2C_Send_ACK sends ACK bit sequence
void I2C_Send_ACK(void)
{
	set_SCL_low;				// Make SCL pin low
	delay(50);	// Data pin should change it's value,
								// when it is confirm that SCL is low
	set_SDA_high;				// Make SDA Low
	delay(50);	// 1/4 bit delay
	set_SCL_high;				// Make SCL pin high
	delay(50);	// Half bit delay
}

// Function Purpose: I2C_ReStart sends start bit sequence
void I2C_ReStart(void)
{
	set_SCL_low;				// Make SCL pin low

	delay(50);	// Data pin should change it's value,
								// when it is confirm that SCL is low
	set_SDA_high;				// Make SDA pin High

	delay(50);	// 1/4 bit delay
	set_SCL_high;				// Make SCL pin high
	delay(50);	// 1/4 bit delay
	set_SDA_low;				// Make SDA Low
	delay(50);	// 1/4 bit delay
}


//Function : I2C_Stop sends stop bit sequence
void I2C_Stop(void)
{
	set_SCL_low;				// Make SCL pin low

	delay(50);	// Data pin should change it's value,
								// when it is confirm that SCL is low
	set_SDA_low;				// Make SDA pin low

	delay(50);	// 1/4 bit delay
	set_SCL_high;				// Make SCL pin high
	delay(50);	// 1/4 bit delay
	set_SDA_high;				// Make SDA high
	delay(50);	// 1/4 bit delay
}

void RepeatedStartI2c()
{
    SCL  = 0;
    delay(50);
    SDA  = 1;
    delay(50);
    SCL  = 1;
    delay(50);
    SDA  = 0;
    delay(50);
}

void eebytew(unsigned int addr, unsigned char databyte)
{
  I2C_Start();
  if(addr <= 0xFF)
  {
      I2C_Write_Byte((unsigned char)0xA0);
  }
  else{
    if(addr <= 0x1FF){
        I2C_Write_Byte((unsigned char)0xA2);
    }
    else{
        if(addr <= 0x2FF){
            I2C_Write_Byte((unsigned char)0xA4);
        }
        else{
            if(addr <= 0x3FF){
                I2C_Write_Byte((unsigned char)0xA6);
            }
            else{
                if(addr <= 0x4FF){
                    I2C_Write_Byte((unsigned char)0xA8);
                }
                else{
                    if(addr <= 0x5FF){
                        I2C_Write_Byte((unsigned char)0xAA);
                    }
                    else{
                        if(addr <= 0x6FF){
                            I2C_Write_Byte((unsigned char)0xAC);
                        }
                        else{
                            if(addr <= 0x7FF){
                                I2C_Write_Byte((unsigned char)0xAE);
                            }
                        }
                    }
                }
            }
        }
    }
  }
  I2C_Write_Byte((unsigned char)addr);
  I2C_Write_Byte(databyte);
  I2C_Stop();
  //return what?
}

unsigned char eebyter(unsigned int addr)
{
  unsigned char rec;
  I2C_Start();
  if(addr <= 0xFF)
  {
      I2C_Write_Byte((unsigned char)0xA0);
  }
  else{
    if(addr <= 0x1FF){
        I2C_Write_Byte((unsigned char)0xA2);
    }
    else{
        if(addr <= 0x2FF){
            I2C_Write_Byte((unsigned char)0xA4);
        }
        else{
            if(addr <= 0x3FF){
                I2C_Write_Byte((unsigned char)0xA6);
            }
            else{
                if(addr <= 0x4FF){
                    I2C_Write_Byte((unsigned char)0xA8);
                }
                else{
                    if(addr <= 0x5FF){
                        I2C_Write_Byte((unsigned char)0xAA);
                    }
                    else{
                        if(addr <= 0x6FF){
                            I2C_Write_Byte((unsigned char)0xAC);
                        }
                        else{
                            if(addr <= 0x7FF){
                                I2C_Write_Byte((unsigned char)0xAE);
                            }
                        }
                    }
                }
            }
        }
    }
  }
  //I2C_Write_Byte((unsigned char)0xA0);
  I2C_Write_Byte((unsigned char)addr);
  RepeatedStartI2c();
  if(addr <= 0xFF)
  {
      I2C_Write_Byte((unsigned char)0xA1);
  }
  else{
    if(addr <= 0x1FF){
        I2C_Write_Byte((unsigned char)0xA3);
    }
    else{
        if(addr <= 0x2FF){
            I2C_Write_Byte((unsigned char)0xA5);
        }
        else{
            if(addr <= 0x3FF){
                I2C_Write_Byte((unsigned char)0xA7);
            }
            else{
                if(addr <= 0x4FF){
                    I2C_Write_Byte((unsigned char)0xA9);
                }
                else{
                    if(addr <= 0x5FF){
                        I2C_Write_Byte((unsigned char)0xAB);
                    }
                    else{
                        if(addr <= 0x6FF){
                            I2C_Write_Byte((unsigned char)0xAD);
                        }
                        else{
                            if(addr <= 0x7FF){
                                I2C_Write_Byte((unsigned char)0xAF);
                            }
                        }
                    }
                }
            }
        }
    }
  }
  //I2C_Write_Byte((unsigned char)0xA1);
  rec=I2C_Read_Byte();
  I2C_Send_ACK();
  I2C_Stop();
  return rec;
}

void main(void)
{
    unsigned char rx = 0;
    I2C_init();					// Initialize i2c pins
    printf("Starting I2C application\r\n");
    printf("Help menu:\r\n");
    printf("'w': Enter an EEPROM address in hex to write data at and byte data\r\n");
    printf("'r': Enter an EEPROM address in hex to read data from\r\n");
    printf("'h': Enter an EEPROM start and end addresses to dump the data\r\n");
    printf("'e': Reset EEPROM\r\n");

while(1)
{
    unsigned int addr, addr1, start_addr, end_addr = 0;
    unsigned int data = 0;
    int digit = 0;
    char ch = getchar();
    putchar(ch);
    printf("\r\n");
    switch(ch)
    {
        case 'w':
            printf("Enter the address location to store the data at : \r\n");
            while (1) {
                ch = getchar();

                if ((int)ch == 13) { // Check until carriage return
                    break; // Exit the loop when Enter is pressed
                }

                if ((ch >= '0') && (ch <= '9')) {
                    digit = ch - '0';
                } else if ((ch >= 'A') && (ch <= 'F')) {
                    digit = ch - 7 - '0';
                } else if ((ch >= 'a') && (ch <= 'f')) {
                    digit = ch - 32 - 7 - '0';
                } else {
                    printf("Invalid input. Please enter 0-9, A-F or a-f only.\r\n");
                    return;
                }
                addr = addr * 16 + digit;

            }

            printf("Entered address: 0x%x\r\n", addr);

            // Check if the address is within the valid range
            if ((addr < 0x0) || (addr > 0x7FF)) {
                printf("Invalid buffer address. The address should be between 0 and 7FF.\r\n");
                break;
            }

            printf("Enter the data byte to write:\r\n");

            while (1) {
                ch = getchar();

                if ((int)ch == 13) { // Check until carriage return
                    break; // Exit the loop when Enter is pressed
                }

                if ((ch >= '0') && (ch <= '9')) {
                    digit = ch - '0';
                } else if ((ch >= 'A') && (ch <= 'F')) {
                    digit = ch - 7 - '0';
                } else if ((ch >= 'a') && (ch <= 'f')) {
                    digit = ch - 32 - 7 - '0';
                } else {
                    printf("Invalid input. Please enter 0-9, A-F or a-f only.\r\n");
                    return;
                }
                data = data * 16 + digit;

            }

            printf("Entered data: 0x%x\r\n", data);

            // Check if the address is within the valid range
            if ((data < 0x0) || (data > 0xFF)) {
                printf("Invalid buffer data. The data should be between 0 and FF.\r\n");
                break;
            }

            eebytew(addr, data);
            break;


        case 'r':
            printf("Enter the address location to read the data from : \r\n");
            while (1) {
                ch = getchar();

                if ((int)ch == 13) { // Check until carriage return
                    break; // Exit the loop when Enter is pressed
                }

                if ((ch >= '0') && (ch <= '9')) {
                    digit = ch - '0';
                } else if ((ch >= 'A') && (ch <= 'F')) {
                    digit = ch - 7 - '0';
                } else if ((ch >= 'a') && (ch <= 'f')) {
                    digit = ch - 32 - 7 - '0';
                } else {
                    printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
                    return;
                }
                addr1 = addr1 * 16 + digit;

            }

            printf("Entered address: 0x%x\r\n", addr1);

            // Check if the address is within the valid range
            if ((addr1 < 0x0) || (addr1 > 0x7FF)) {
                printf("Invalid buffer address. The address should be between 0 and 7FF.\r\n");
                return;
            }
            unsigned char rd = eebyter(addr1);
            printf("read data: 0x%x\r\n", rd);
            break;

        case 'h':
            printf("Enter the start address for dump:\r\n");
            while (1) {
                ch = getchar();

                if ((int)ch == 13) { // Check until carriage return
                    break; // Exit the loop when Enter is pressed
                }

                if ((ch >= '0') && (ch <= '9')) {
                    digit = ch - '0';
                } else if ((ch >= 'A') && (ch <= 'F')) {
                    digit = ch - 7 - '0';
                } else if ((ch >= 'a') && (ch <= 'f')) {
                    digit = ch - 32 - 7 - '0';
                } else {
                    printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
                    return;
                }
                start_addr = start_addr * 16 + digit;

            }

            printf("Entered start address: 0x%x\r\n", start_addr);

            // Check if the address is within the valid range
            if ((start_addr < 0x0) || (start_addr > 0x7FF)) {
                printf("Invalid start address. The address should be between 0 and 7FF.\r\n");
                return;
            }

            printf("Enter the end address for dump:\r\n");
            while (1) {
                ch = getchar();

                if ((int)ch == 13) { // Check until carriage return
                    break; // Exit the loop when Enter is pressed
                }

                if ((ch >= '0') && (ch <= '9')) {
                    digit = ch - '0';
                } else if ((ch >= 'A') && (ch <= 'F')) {
                    digit = ch - 7 - '0';
                } else if ((ch >= 'a') && (ch <= 'f')) {
                    digit = ch - 32 - 7 - '0';
                } else {
                    printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
                    return;
                }
                end_addr = end_addr * 16 + digit;

            }

            printf("Entered end address: 0x%x\r\n", end_addr);

            // Check if the end address is within the valid range
            if ((end_addr < 0x0) || (end_addr > 0x7FF) || (end_addr < start_addr)) {
                printf("Invalid end address. The address should be between 0-7FF and more than the start address.\r\n");
                return;
            }

            printf("%x:", start_addr);
            addr = start_addr;
            for (int i=0; i<end_addr - start_addr; i++)
            {
                if (i > 0 && i % 16 == 0) {
                    printf("\r\n");  // Start a new line after every 16 bytes
                    printf("%x:", addr);
                }
                printf("%x ", eebyter(addr));
                addr += 1;
            }
            printf("\r\n");

            break;

/*        case '4':
            printf("You have selected to Reset EEPROM Memory\r\n");
            eereset();
            break;*/

        default:
            printf("Invalid input\r\n");
            break;

    }
#if 0
	I2C_Start();				// Send start bit on i2c
	do{
        ack = I2C_Write_Byte(0xA0);		// Send 0xA0 on i2c
        printf("here %d\r\n", ack);
	} while (ack == 1);
	delay(50);
	do{
        ack = I2C_Write_Byte(0xBE);		// Send 0xA0 on i2c
        printf("here1 %d\r\n", ack);
	} while (ack == 1);
	delay(50);
	do{
        ack = I2C_Write_Byte(0xDD);		// Send 0xA0 on i2c
        printf("here2 %d\r\n", ack);
	} while (ack == 1);
	delay(50);
	I2C_Stop();
#endif
#if 0
	I2C_Start();				// Send start bit on i2c
	do{
        ack = I2C_Write_Byte(0xA0);		// Send 0xA0 on i2c
        printf("here3 %d\r\n", ack);
	} while (ack == 1);
	do{
        ack = I2C_Write_Byte(0xBE);		// Send 0xA0 on i2c
        printf("here4 %d\r\n", ack);
	} while (ack == 1);
	RepeatedStartI2c();
	do{
        ack = I2C_Write_Byte(0xA1);		// Send 0xA0 on i2c
        printf("here5 %d\r\n", ack);
	} while (ack == 1);
    rx = I2C_Read_Byte();	// Read value from i2c
    delay(50);
    I2C_Send_ACK();				// Send ACK bit on i2c
    delay(50);
    I2C_Stop();					// Send stop bit on i2c
    printf("rx 0x%x\r\n", rx);
#endif
}

}
