//
//  RealEstate.m
//  REApp
//
//  Created by Academy387 on 12/8/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "RealEstate.h"

@implementation RealEstate

-(id) initWithPics:(NSArray *)pics{
    self=[super init];
    
    pics=[[NSArray alloc] initWithArray:pics];
    
    return self;
}


-(id) initWithId:(NSString* ) reid andWithPics:(NSArray *) pics{
    self=[super init];
    self.pics=[[NSArray alloc] initWithArray:pics];
    self.reID=reid;
    return self;
}

@end
