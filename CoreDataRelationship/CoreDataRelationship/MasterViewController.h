//
//  MasterViewController.h
//  CoreDataRelationship
//
//  Created by Adenike Olatunji on 20/04/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
