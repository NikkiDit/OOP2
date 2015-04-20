//
//  DetailViewController.h
//  CoreDataRelationship
//
//  Created by Adenike Olatunji on 20/04/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
