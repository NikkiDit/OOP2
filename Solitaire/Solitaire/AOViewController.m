//
//  AOViewController.m
//  Solitaire
//
//  Created by Adenike Olatunji on 23/03/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import "AOViewController.h"
#import "AOCardView.h"

@interface AOViewController ()
@property CGColorRef shadowColor;
@property (nonatomic,strong) NSArray *suits;

@end
const CGFloat CardWidth = 35.0f;   // this includes drop shadows
const CGFloat CardHeight = 40.0f;



@implementation AOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _suits = [[NSArray  alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
   
    
    [self createCardDeck];
    
    
}



- (void) createCardDeck{
    _suits = @[@"♣", @"❤",@"◆"];
    
    AOCardView *cardView = [[AOCardView alloc] init];
    cardView.cardNum = [_suits objectAtIndex:1];
    int x= 5;
    
    for (int i=1; i<=7; i++) {
        int y = 20;
        int  b =random() % 10;
     
            for (int j=1; j<=b; j++) {
            
            CGRect  viewRect = CGRectMake(x, y, CardWidth, CardHeight);
            UIView *view = [[UIView alloc] initWithFrame:viewRect];
              
                view.backgroundColor = [UIColor whiteColor];
                
                view.layer.cornerRadius = 5;
                view.layer.borderWidth = 1.0f;
                view.layer.borderColor =[UIColor grayColor].CGColor;
                
            [self.view addSubview:view];
                [self.view addSubview:cardView.cardNum];
            y =y-15+CardHeight;
        }
        x=x+5+CardWidth;
    }
    
    
}
         
@end
