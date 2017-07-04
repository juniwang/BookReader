//
//  SourcesMgmt.h
//  BookReader
//
//  Created by Junbo Wang on 04/07/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookSource.h"

@interface SourcesMgmt : NSObject

+ (SourcesMgmt *) instance;
- (NSMutableDictionary<NSString *, BookSource *> *) getSources;

@end
