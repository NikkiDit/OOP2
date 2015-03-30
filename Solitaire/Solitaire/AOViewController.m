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
@property (nonatomic,strong) NSMutableArray *deck;

@end



const CGFloat CardWidth = 45.0f;   // this includes drop shadows
const CGFloat CardHeight = 75.0f;

const CGFloat SuitWidth = 20.0f;   // this includes drop shadows
const CGFloat SuitHeight = 13.0f;

const CGFloat FaceWidth = 10.0f;   // this includes drop shadows
const CGFloat FaceHeight = 8.0f;



@implementation AOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setupDeck];
    [self createCardDeck];
   
    
}
-(void)setupDeck{
    // create the card deck array
    NSArray *faces = @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    NSArray *suits = @[@"♣", @"♥", @"♠", @"♦"];
    
    _deck = [[NSMutableArray alloc]init];
    
    for(NSString *suit in suits){
        for (NSString *face in faces) {
            AOCardView *cardView = [[AOCardView alloc] initWithFace:face suit:suit];
            [_deck addObject:cardView];
        }
        
    }
    //  shuffle the card deck array
    for (NSUInteger i = [_deck count] - 1; i > 0; i--) {
        NSUInteger n = arc4random_uniform(i + 1);
        [_deck exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
   
}



- (void) createCardDeck{
  
    int labelCount = [_deck count];
    int  b;
    int x= 2;
    int m = 0;
    for (int i=1; i<=7; i++) {
        int y = 25;
        if (i==7){
            b=labelCount-m;
        }else{
            
            b=random() % 12;
        }
        for (int j=1; j<=b; j++) {
            
            CGRect  viewRect = CGRectMake(x, y, CardWidth, CardHeight);
            UIView *view = [[UIView alloc] initWithFrame:viewRect];
            [view setContentMode:UIViewContentModeCenter];
            view.clipsToBounds = YES;
            view.backgroundColor = [UIColor whiteColor];
            UILabel *viewLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(1,1,SuitWidth,SuitHeight)];
            UILabel *viewLabel4 = [[UILabel alloc] initWithFrame:CGRectMake(CardWidth-21,CardHeight-42,SuitWidth,SuitHeight)];
            
            [viewLabel3  setContentScaleFactor:0.2f];
            viewLabel3.clipsToBounds = YES;
            [viewLabel4  setContentScaleFactor:0.2f];
            viewLabel4.clipsToBounds = YES;
            
            
            view.layer.cornerRadius = 5;
            view.layer.borderWidth = 1.0f;
            view.layer.borderColor =[UIColor grayColor].CGColor;
            
            AOCardView *card =[_deck objectAtIndex:random() % [_deck count]];
            viewLabel3.text = card.description;
            
            viewLabel4.text = card.description;
            if([viewLabel3.text containsString:@"♥" ] ||[viewLabel3.text containsString:@"♦"]||[viewLabel4.text containsString:@"♥" ] ||[viewLabel4.text containsString:@"♦"])
            {
                viewLabel3.textColor = [UIColor redColor];
                viewLabel4.textColor = [UIColor redColor];            }
            
            
            viewLabel3.numberOfLines = 0;
            [viewLabel3 sizeToFit];
            viewLabel4.numberOfLines = 0;
            [viewLabel4 sizeToFit];
            
            [view addSubview:viewLabel3];
            CGAffineTransform xform = CGAffineTransformMakeRotation(M_PI/1.0);
            viewLabel4.transform = xform;
            [view addSubview:viewLabel3];
            [view addSubview:viewLabel4];
            [self.view addSubview:view];
            [_deck removeObject:card];
           
            y =y-50+CardHeight;
            
            if (m<(labelCount+1)) {
                m =m+1;
            }else{
                return;
            }
        }
        x=x+0.5+CardWidth;
        
    }
    
}


         
@end
