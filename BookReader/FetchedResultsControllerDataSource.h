//
//  FetchedResultsControllerDataSource.h
//  BookReader
//
//  Created by Junbo Wang on 04/07/2017.
//  Copyright © 2017 Junbo Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>

@class NSFetchedResultsController;

@protocol FetchedResultsControllerDataSourceDelegate

- (void)configureCell:(id)cell withObject:(id)object;
- (void)deleteObject:(id)object;

@end


@interface FetchedResultsControllerDataSource : NSObject <UITableViewDataSource, NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSFetchedResultsController* fetchedResultsController;
@property (nonatomic, weak) id<FetchedResultsControllerDataSourceDelegate> delegate;
@property (nonatomic, copy) NSString* reuseIdentifier;
@property (nonatomic) BOOL paused;
@property (nonatomic, strong) UITableView* tableView;

- (id)initWithTableView:(UITableView *)tableView;
- (id)selectedItem;

@end
