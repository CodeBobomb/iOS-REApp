//
//  REA.m
//  REApp
//
//  Created by Academy387 on 12/8/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "REA.h"

#import "RealEstate.h"

@implementation REA



//NSMutableArray* agents;
NSInteger clientSize;
NSInteger reSize;


NSMutableArray* clients;
NSMutableArray* realestates;

+(id) initREA{
    static REA* staticREA=nil;
    
    @synchronized(self) {
        if (staticREA == nil)
            staticREA = [[self alloc] init];
    }
    return staticREA;
}


-(id)init{
    self=[super init];
    clients=[NSMutableArray alloc];
    realestates=[NSMutableArray alloc];
    return self;
}


-(void)addClient:(Client*) c{
    [clients addObject:c];
    
}
-(void)addRealEstates:(RealEstate*) re{
    [realestates addObject:re];
}

-(Client*) findClient:(NSString*) userID{
    Client* c=nil;
    for(int i=0;i<[clients count];i++)
        if(((Client*)[clients objectAtIndex:i]).userID == userID)
            c=(Client*)[clients objectAtIndex:i];
    return c;
}
-(RealEstate*) findRealEstate:(NSString*) reID{
    RealEstate* re=nil;
    for(int i=0;i<[realestates count];i++)
        if(((RealEstate*)[realestates objectAtIndex:i]).reID == reID)
            re=(RealEstate*)[realestates objectAtIndex:i];
    return re;
}


@end
