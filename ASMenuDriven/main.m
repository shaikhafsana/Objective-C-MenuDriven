//
//  main.m
//  ASMenuDriven
//
//  Created by Student P_02 on 23/10/16.
//  Copyright © 2016 Afsana. All rights reserved.
//

#import <Foundation/Foundation.h>

void primefactor(int number);
void leapyear(int year);
void sum(int number);
void reverse(int number);
int number,year;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int choice;
        printf("\nMenu\n1.Prime Factor\n2.Leap Year\n3.Sum Of All Digits\n4.Number In Reverse Order");
        printf("\nPlease Enter your choice:");
        scanf("%d",&choice);
        switch(choice)
        {
            case 1 :
                primefactor(number);
                break;
            case 2 :
                leapyear(year);
                break;
            case 3 :
                sum(number);
                break;
            case 4 :
                reverse(number);
                break;
                
            default :
                printf("\nWrong choice");
                break;
        }
        
    }
    return 0;
}
//prime factorlogic
void primefactor(int number)
{
    int i=1,j,k;
    printf("\nEnter a number:");
    scanf("%d",&number);
    while(i<=number){
        k=0;
        if(number%i==0){
            j=1;
            while(j<=i){
                if(i%j==0)
                    k++;
                j++;
            }
            if(k==2)
                printf("\n%d is a prime factor",i);
        }
        i++;
    }
}
//leap year logic
void leapyear(int year)
{
    printf("Enter a year to check leap year \n");
    scanf("%d", &year);
    
    if(((year%4==0)&&(year%100!=0))||(year%400==0))
    {
        printf("%d is leap year\n", year);
    }
    else
    {
        printf("%d is not leap year\n", year);
    }
}
//Sum of digits logic
void sum(int number)
{
    int sum=0,digit;
    printf("Enter a number: ");
    scanf("%d",&number);
    while(number){
        digit=number%10;
        number=number/10;
        sum=sum+digit;
    }
    printf("Sum of digits of number:  %d",sum);
}
//reverse logic
void reverse(int number)
{
    int digit,reverse_number=0;
    printf("\nEnter any number:");
    scanf("%d",&number);
    
    while(number>=1)
    {
        digit= number % 10;
        reverse_number = reverse_number * 10 + digit;
        number = number / 10;
    }
    printf("\nReverse of Number is: %d",reverse_number);
}