#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define GETSIGNAL 0x80000000
#define GETEXPONENT 0x7f800000
#define GETMANTISSA 0x007fffff

int main(int argc, const char *argv[]) {


    int hexNumber =  strtol(argv[1], NULL, 16);
    float mantissa = 1;
    unsigned int sign = 0; 
    unsigned int exponent = 0;
    float decNumber = 0;

    //getting the sign
    sign =  hexNumber & GETSIGNAL;
    sign = sign >> 31;
  
    // getting the exponent
    exponent =  hexNumber & GETEXPONENT;
    exponent =  exponent << 1;
    exponent = exponent >> 24;
    exponent =  exponent -127;
   
    //get the abgstract mantissa
    int mantissaAbstract = hexNumber & GeTMANTISSA;

    // aux to get the active or not active bit
    int getBitFromMantissaAbstract  =  0x00400000;

    for(int i = 1; i<=23; i++) {
      int bit = mantissaAbstract & getBitFromMantissaAbstract;
      bit =  bit >> (23-i);
      getBitFromMantissaAbstract =  getBitFromMantissaAbstract >> 1;
      mantissa = mantissa + bit*pow(2, (-1*i)); 
     
   }

   // condição ? codigoUm : codigoDois;

    decNumber = pow(2, exponent) * mantissa;
    decNumber = (sign == 0) ? decNumber: (-1*decNumber);


    //printf("%ld\n", strtol(argv[1], NULL, 16));
  
  return 0;
}
