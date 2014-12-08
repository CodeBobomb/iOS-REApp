//
//  REA.h
//  REApp
//
//  Created by Academy387 on 12/8/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "RealEstate.h"

@interface REA : NSObject


+(id) initREA;

-(void)addClient:(Client*) c;
-(void)addRealEstates:(RealEstate*) re;

-(Client*) findClient:(NSString*) id;
-(RealEstate*) findRealEstate:(NSString*) id;

@end
