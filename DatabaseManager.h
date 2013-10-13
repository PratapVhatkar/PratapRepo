//
//  DatabaseManager.h
//  Core_Data
//
//  Created by Akshay Vhatkar on 14/09/13.
//  Copyright (c) 2013 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DatabaseManager : NSObject

+ (id) sharedDatabaseManager;
-(void)insertEntityData:(NSString *)namestr;
-(void)displayAllData;
@end
