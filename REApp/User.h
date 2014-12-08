//
//  User.h
//  REApp
//
//  Created by Academy387 on 12/8/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString* firstName;
@property NSString* lastName;

@property NSString* user;


@property NSString* id;


-(id)initWithUser:(NSString*)User withPass:(NSString*)pass andID:(NSString*)jmbg;

-(BOOL)checkPassword:(NSString*)pass;

-(NSString*)getFullName;
-(NSString*)getUserID;

@end
