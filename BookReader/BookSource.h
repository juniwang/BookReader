//
//  Book.h
//  BookReader
//
//  Created by Junbo Wang on 03/07/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookSource : NSObject

@property NSString *name;
@property NSString *url;
@property bool isDefault;

- (NSString *)toString;

@end
