//
//  StripePaymentService.m
//  PaymentsCalculatorApp
//
//  Created by Raman Singh on 2018-04-13.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
-(void)processPaymentAmount:(NSInteger)paymentAmount {
NSLog(@"Stripe processed amount $%ld", (long)paymentAmount);}


-(BOOL)canProcessPayment {
    int i = arc4random_uniform(2);
    
    return i;
}

@end
