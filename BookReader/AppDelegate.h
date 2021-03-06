//
//  AppDelegate.h
//  BookReader
//
//  Created by Junbo Wang on 01/06/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Store;
@class PersistentStack;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) PersistentStack* persistentStack;

@end

