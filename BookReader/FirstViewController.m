//
//  FirstViewController.m
//  BookReader
//
//  Created by Junbo Wang on 01/06/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import "FirstViewController.h"
#import "SourcesMgmt.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableDictionary * mydict = [SourcesMgmt.instance getSources];
    NSLog(@"My first book is %@", [[mydict objectForKey:@"Qidian"] toString]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
