//
//  Entity.m
//  Core_Data
//
//  Created by Akshay Vhatkar on 14/09/13.
//  Copyright (c) 2013 Mac. All rights reserved.
//

#import "Entity.h"


@implementation Entity

@dynamic name;
@dynamic timeStamp;

-(void)insertDataObject:(NSString *)str{
    [self setName:str];
    [self setTimeStamp:[NSDate date]];
}

@end
