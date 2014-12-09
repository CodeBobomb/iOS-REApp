//
//  Agent.h
//  REApp
//
//  Created by Academy387 on 12/8/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "User.h"

@interface Agent : User


@property NSDate* startedWorking;

@property NSString* licenseID;

-(id)initWithUser:(NSString*)User withPass:(NSString*)pass andID:(NSString*)jmbg;


@end


