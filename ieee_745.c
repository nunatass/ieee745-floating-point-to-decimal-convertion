#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define GET_SIGNAL 0x80000000
#define GET_EXPONENT 0x7f800000
#define GET_MANTISSA 0x007fffff






int main(int argc, const char *argv[]) {

   if(argv[1] == NULL)
    exit(0);




    int hexNumber =  strtol(argv[1], NULL, 16);

    double mantissa = 0;

    unsigned int sign = 0;

    unsigned int exponent = 0;

    float decNumber = 0;





    //getting the sign
    sign =  hexNumber & GET_SIGNAL;
    //sign = sign >> 31;

    // getting the exponent
    exponent =  hexNumber & GET_EXPONENT;

    exponent =  exponent << 1;

    exponent = exponent >> 24;

    exponent =  exponent -127;


    //get the abgstract mantissa
    int mantissaAbstract = hexNumber & GET_MANTISSA;

    // aux to get the active or not active bit
    int getBitFromMantissaAbstract  =  0x00400000;


    for(int i = 1; i<=23; i++) {
      int bit = mantissaAbstract & getBitFromMantissaAbstract;

      bit =  bit >> (23-i);

      getBitFromMantissaAbstract =  getBitFromMantissaAbstract >> 1;

      mantissa = mantissa + bit*pow(2, (-1*i));
   }



     if(exponent == 128 && mantissa > 0)
        printf("NaN\n");

    else if(exponent == 128 && mantissa == 0 && sign == 0)
      printf("INF\n");

    else if (exponent == 128 && mantissa == 0 && sign != 0)
      printf("-INF\n");

    else{

     mantissa = mantissa + 1;
     decNumber = pow(2, exponent) * mantissa;

         printf("%f\n", decNumber);
         decNumber = (sign == 0) ? decNumber: (-1*decNumber);

    }
  return 0;
}
