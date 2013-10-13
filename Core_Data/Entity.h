//
//  Entity.h
//  Core_Data
//
//  Created by Akshay Vhatkar on 14/09/13.
//  Copyright (c) 2013 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Entity : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * timeStamp;

-(void)insertDataObject:(NSString *)nameStr;


@end
