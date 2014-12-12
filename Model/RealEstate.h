//
//  RealEstate.h
//  REApp
//
//  Created by Academy387 on 12/8/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RealEstate : NSObject


-(id) initWithPics:(NSArray* )pics;
-(id) initWithId:(NSString* ) reid andWithPics:(NSArray *) pics;

@property NSString* desc;
@property NSArray* pics;
@property NSString* reID;

@end
