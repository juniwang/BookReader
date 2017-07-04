//
//  SourcesMgmt.m
//  BookReader
//
//  Created by Junbo Wang on 04/07/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import "SourcesMgmt.h"
#import "BookSource.h"

@implementation SourcesMgmt

static NSMutableDictionary<NSString *, BookSource * >* sources;

+ (SourcesMgmt *) instance
{
    static SourcesMgmt *sharedSingleton;
    @synchronized(self)
    {
        if (!sharedSingleton)
            sharedSingleton = [[SourcesMgmt alloc] init];
        
        return sharedSingleton;
    }
}

+ (void)initialize
{
    if(self == [SourcesMgmt class])
    {
        sources = [[NSMutableDictionary alloc] init];
        
        BookSource * sourceA = [[BookSource alloc] init];
        [sourceA setName:@"Qidian"];
        [sourceA setUrl:@"http://www.qidian.com"];
        [sourceA setIsDefault: true];
        [sources setObject: sourceA forKey: @"Qidian"];
    }
}

- (NSMutableDictionary<NSString *, BookSource *> *) getSources
{
    return sources;
}

@end
