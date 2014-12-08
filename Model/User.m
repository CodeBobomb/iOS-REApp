//
//  User.m
//  REApp
//
//  Created by Academy387 on 12/8/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "User.h"

@implementation User
NSString* password;

//Konstruktor koji prima Username, Password i JMBG usera;
-(id)initWithUser:(NSString*)user withPass:(NSString*)pass andID:(NSString*)userID{
    self=[super init];
    self.user=user;
    password=pass;
    self.userID=userID;
    
    return self;

}

-(BOOL)checkPassword:(NSString*) pass{
    return pass==password;
}

-(NSString*)getFullName{
    return [[NSString alloc] initWithFormat:@"%@ %@",self.firstName, self.lastName];
}


-(NSString*)getUserID{
    return [[NSString alloc] initWithFormat:self.userID,@": ",self.user];
}
@end
