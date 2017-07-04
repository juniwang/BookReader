//
//  PersistentStack.h
//  BookReader
//
//  Created by Junbo Wang on 04/07/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface PersistentStack : NSObject

@property (nonatomic,strong,readwrite) NSManagedObjectContext * managedObjectContext;
@property (nonatomic,strong) NSURL* modelURL;
@property (nonatomic,strong) NSURL* storeURL;

- (id)initWithStoreURL:(NSURL*)storeURL modelURL:(NSURL*)modelURL;

@end
