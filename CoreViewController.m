//
//  CoreViewController.m
//  Core_Data
//
//  Created by Akshay Vhatkar on 14/09/13.
//  Copyright (c) 2013 Mac. All rights reserved.
//

#import "CoreViewController.h"
#import "CoreAppDelegate.h"
#import "DatabaseManager.h"
@interface CoreViewController ()

@end

@implementation CoreViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[DatabaseManager sharedDatabaseManager]insertEntityData:@"Prashant"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
