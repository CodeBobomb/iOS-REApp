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
-(id)initWithUser:(NSString*)user withPass:(NSString*)pass andID:(NSString*)id{
    
    self=[super init];
    if(self){
        self.user=user;
        password=pass;
        self.id=id;
    }
    return self;
}

-(BOOL)checkPassword:(NSString*) pass{
    return pass==password;
}

-(NSString*)getFullName{
    return [[NSString alloc] initWithFormat:_firstName,@" ",_lastName];
}


-(NSString*)getUserID{
    return [[NSString alloc] initWithFormat:self.id,@": ",self.user];
}
@end
