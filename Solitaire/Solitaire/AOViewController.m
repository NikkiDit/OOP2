//
//  AOViewController.m
//  Solitaire
//
//  Created by Adenike Olatunji on 23/03/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import "AOViewController.h"

@interface AOViewController ()

@end
const CGFloat CardWidth = 40.0f;   // this includes drop shadows
const CGFloat CardHeight = 40.0f;



@implementation AOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self createCardDeck];
}

- (void) createCardDeck{
    int x= 4;
    int y = 4;
    for (int i=1; i<7; i++) {
        
        for (int j=1; j<13; j++) {
            
            CGRect  viewRect = CGRectMake(x, y, CardWidth, CardHeight);
            UIView *view = [[UIView alloc] initWithFrame:viewRect];
            view.backgroundColor = [UIColor redColor];
            [self.view addSubview:view];
            y =y+4+CardHeight;
        }
        x=x+4+CardWidth;
    }
    
    
}
         
@end
