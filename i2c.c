#include <mcs51/mcs51reg.h>
#include <stdio.h>

#define SDA P1_6
#define SCL P1_7

void I2CInit(){
SDA = 1;
SCL = 1;
}

void I2CStart(){
SCL = 1;
SDA = 0;
SCL = 0;
}

void I2CRestart(){
SDA = 1;
SCL = 1;
SDA = 0;
}

void I2CStop(){
SDA = 0;
SCL = 1;
SDA = 1;
}

void I2CAck(){
SDA = 0;
SCL = 1;
SCL = 0;
}

void I2CNak(){
SDA = 1;
SCL = 1;
SCL = 0;
}

unsigned char I2CSend(unsigned char Data){
unsigned char i, ack_bit;
for(i=0;i<8;i++){
SCL = 0;
if ((Data & 0x80) == 0)
SDA = 0;
else
SDA = 1;
SCL = 1;
Data<<=1;
}
SCL = 0;
ack_bit = SDA;
SCL = 1;
SCL = 0;
return !ack_bit;
}

unsigned char I2CRead(){
unsigned char i, Data=0;
for(i=0;i<8;i++){
SCL = 0;
SCL = 1;
if(SDA)
Data |=1;
if(i<7)
Data<<=1;
}
SCL = 0;
SDA = 1;
return Data;
}
