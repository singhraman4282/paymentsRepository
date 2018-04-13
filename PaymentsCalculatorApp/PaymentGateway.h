//
//  PaymentGateway.h
//  PaymentsCalculatorApp
//
//  Created by Raman Singh on 2018-04-13.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate;



@interface PaymentGateway : NSObject
-(void)processPayment:(int)payment;
@property(weak) id paymentDelegate;






@end


@protocol PaymentDelegate

-(void)processPaymentAmount:(NSInteger)paymentAmount;
-(BOOL)canProcessPayment;


@end
