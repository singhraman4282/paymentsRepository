//
//  PaypalPaymentService.m
//  PaymentsCalculatorApp
//
//  Created by Raman Singh on 2018-04-13.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService
-(void)processPaymentAmount:(NSInteger)paymentAmount {
   
    
    NSLog(@"PayPal processed amount $%ld", (long)paymentAmount);
    
    
    
}

-(BOOL)canProcessPayment {
    int i = arc4random_uniform(2);
    
    return i;
}


@end
