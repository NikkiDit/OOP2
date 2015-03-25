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
@property (nonatomic,strong) NSMutableArray *deck;

@end
const CGFloat CardWidth = 40.0f;   // this includes drop shadows
const CGFloat CardHeight = 50.0f;

const CGFloat SuitWidth = 17.0f;   // this includes drop shadows
const CGFloat SuitHeight = 10.0f;
@implementation AOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
   
    [self setupDeck];
    [self createCardDeck];
    [self viewGestureTap];
    
    
}
-(void)setupDeck{
    NSArray *faces = @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    NSArray *suits = @[@"♣", @"♥", @"♠", @"♦"];
    
    _deck = [NSMutableArray array];
    
    for(NSString *suit in suits){
        for (NSString *face in faces) {
            AOCardView *cardView = [[AOCardView alloc] initWithFace:face suit:suit];
            [_deck addObject:cardView];
        }
    }
}

- (void) createCardDeck{
   //  NSArray *suits = @[@"♣", @"♥", @"♠", @"♦"];
    // NSArray *faces = @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    
   
    int x= 5;
    
    for (int i=1; i<=7; i++) {
        int y = 20;
        int  b =random() % 10;
     
            for (int j=1; j<=b; j++) {
            
            CGRect  viewRect = CGRectMake(x, y, CardWidth, CardHeight);
            UIView *view = [[UIView alloc] initWithFrame:viewRect];
              [view setContentMode:UIViewContentModeCenter]
                ;
                view.clipsToBounds = YES;
                view.backgroundColor = [UIColor whiteColor];
                UILabel *viewLabel = [[UILabel alloc] initWithFrame:CGRectMake(2,8,SuitWidth,SuitHeight)];
                //UILabel *viewLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(2,18,SuitWidth,SuitHeight)];
                view.layer.cornerRadius = 5;
                view.layer.borderWidth = 1.0f;
                view.layer.borderColor =[UIColor grayColor].CGColor;
                NSLog(@"%@",_deck[arc4random()%_deck.count]);
                
                viewLabel.text=_deck[arc4random()%_deck.count];
                
                
                
                // viewLabel.text=faces[arc4random()%faces.count];
               // viewLabel1.text = suits[arc4random()%suits.count];
                
                [view addSubview:viewLabel];
               
                // [view addSubview:viewLabel1];
                
                [self.view addSubview:view];
          
            y =y-11+CardHeight;
        }
        x=x+5+CardWidth;
    }
    
    

}


-(void) viewGestureTap{
    
    
    
}
         
@end
