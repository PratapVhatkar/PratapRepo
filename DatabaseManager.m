//
//  DatabaseManager.m
//  Core_Data
//
//  Created by Akshay Vhatkar on 14/09/13.
//  Copyright (c) 2013 Mac. All rights reserved.
//

#import "DatabaseManager.h"
#import "Entity.h"
#import "Define.h"

static DatabaseManager *sharedDatabaseManager = nil;

@implementation DatabaseManager

+ (id) sharedDatabaseManager {
    if (!sharedDatabaseManager) {
        sharedDatabaseManager = [[self alloc] init];
    }
    return sharedDatabaseManager;
}

-(void)insertEntityData:(NSString *)namestr{
   
    //database open
    Entity *_entityObject = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:[DELEGATE managedObjectContext]];
    
    //doing opertaions
    [_entityObject insertDataObject:namestr];
    
    //save database
    [DELEGATE saveContext];
}

-(NSArray *)displayAllData{
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Entity"];
        fetchRequest.sortDescriptors = @[ [[NSSortDescriptor alloc] initWithKey:@"timeStamp" ascending:YES] ];
        NSArray *objects = [[DELEGATE managedObjectContext] executeFetchRequest:fetchRequest error:NULL];
        return objects;
}


@end
