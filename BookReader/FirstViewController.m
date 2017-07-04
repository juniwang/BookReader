//
//  FirstViewController.m
//  BookReader
//
//  Created by Junbo Wang on 01/06/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import "FirstViewController.h"
#import "SourcesMgmt.h"
#import <CoreData/CoreData.h>
#import "PersistentStack.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableDictionary * mydict = [SourcesMgmt.instance getSources];
    NSLog(@"My first book is %@", [[mydict objectForKey:@"Qidian"] toString]);
    
    PersistentStack * stack = [[PersistentStack alloc] init];
    NSManagedObjectContext * context = stack.managedObjectContext;
    NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Book" inManagedObjectContext:context];
    NSError *error;

//    NSManagedObject *newBook;
//    newBook = [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:context];
//    [newBook setValue:@"Jiang ye" forKey:@"name"];
//    [newBook setValue:@"Mao Ni" forKey:@"author"];
//    [newBook setValue:[NSDate date] forKey:@"createdDate"];
    
//    [context save:&error];
    
    NSFetchRequest * request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDesc];
    NSArray *objects = [context executeFetchRequest:request error:&error];
    NSManagedObject *matches = nil;
    
    if ([objects count] == 0) {
        NSLog(@"No matches");
    }else{
        matches = [objects objectAtIndex:0];
        NSString* name =[matches valueForKey:@"name"];
        NSLog(@"The first book is %@", name);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
