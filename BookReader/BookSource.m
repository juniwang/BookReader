//
//  Book.m
//  BookReader
//
//  Created by Junbo Wang on 03/07/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import "BookSource.h"

@implementation BookSource

- (NSString *)toString
{
    NSString *string1 = [NSString stringWithFormat:@"name=%@, source=%@", self.name, self.url];
    return string1;
}

@end
