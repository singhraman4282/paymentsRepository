//
//  PaymentGateway.m
//  PaymentsCalculatorApp
//
//  Created by Raman Singh on 2018-04-13.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void)processPayment:(int)payment {
    
    
    
    
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:payment];
    
    
    } else {
        NSLog(@"Can't process!");
    }
    
    
    
    
}



@end
