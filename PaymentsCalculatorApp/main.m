//
//  main.m
//  PaymentsCalculatorApp
//
//  Created by Raman Singh on 2018-04-13.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        while (YES) {
        
    int randomValue = arc4random_uniform(901) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is %d$ Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomValue);
    
    
        char userInput[255];
        
        fgets(userInput, 255, stdin);
        NSString *userInputString = [NSString stringWithUTF8String:userInput];
            userInputString = [userInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        int userChoice = [userInputString intValue];
        
//        NSLog(@"the int is %d", userChoice);
    
    
        PaymentGateway *newPayment = [PaymentGateway new];
//        [newPayment processPayment:randomValue];
        


        
        switch (userChoice) {
            case 1:
            {
                        PaypalPaymentService *newPayPalPayment = [PaypalPaymentService new];
                        newPayment.paymentDelegate = newPayPalPayment;
                [newPayment processPayment:randomValue];
                break;
            }

            case 2:
            {
                StripePaymentService *newStripePayment = [StripePaymentService new];
                newPayment.paymentDelegate = newStripePayment;
                [newPayment processPayment:randomValue];
                break;
            }

            case 3:
            {
                
                AmazonPaymentService *newAmazonPayment = [AmazonPaymentService new];
                newPayment.paymentDelegate = newAmazonPayment;
                [newPayment processPayment:randomValue];
                break;
            }

                
                
                
            default:
                break;
        }
    
    
//      [newPayment processPayment:randomValue];
    
    
    
    
        }//while
    }//auto
    return 0;
}
