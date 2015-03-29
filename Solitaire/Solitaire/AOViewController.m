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



const CGFloat CardWidth = 42.0f;   // this includes drop shadows
const CGFloat CardHeight = 60.0f;

const CGFloat SuitWidth = 17.0f;   // this includes drop shadows
const CGFloat SuitHeight = 10.0f;

const CGFloat FaceWidth = 20.0f;   // this includes drop shadows
const CGFloat FaceHeight = 13.0f;



@implementation AOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
   
    [self setupDeck];
    [self createCardDeck];
    
}
-(void)setupDeck{
    
    
    NSArray *faces = @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    NSArray *suits = @[@"♣", @"♥", @"♠", @"♦"];
    
    _deck = [[NSMutableArray alloc]init];
    
    for(NSString *suit in suits){
        for (NSString *face in faces) {
            AOCardView *cardView = [[AOCardView alloc] initWithFace:face suit:suit];
            [_deck addObject:cardView];
            
            
            }
    }
    
        NSLog(@"%d@", _deck.count);
    for (AOCardView *card in _deck){
        // if ([cardView.face isEqualToString:face ] && [cardView.suit isEqualToString:suit]){
        //       NSLog(@"matched");
        //   }else{
        //       [_deck addObject:cardView];}
      // NSLog(@"%@", card.description);
    
    
    }

}









- (void) createCardDeck{
     NSArray *suits = @[@"♣", @"♥", @"♠", @"♦"];
    NSArray *faces = @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    
   
    int x= 5;

    for (int i=1; i<=7; i++) {
        int y = 20;
        int  b =random() % 12;
     
            for (int j=1; j<=b; j++) {
            
            CGRect  viewRect = CGRectMake(x, y, CardWidth, CardHeight);
            UIView *view = [[UIView alloc] initWithFrame:viewRect];
            [view setContentMode:UIViewContentModeCenter]
                ;
                view.clipsToBounds = YES;
                view.backgroundColor = [UIColor whiteColor];
                UILabel *viewLabel = [[UILabel alloc] initWithFrame:CGRectMake(2,6,FaceWidth,FaceHeight)];
                UILabel *viewLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(10,24,SuitWidth,SuitHeight)];
                
                
                view.layer.cornerRadius = 5;
                view.layer.borderWidth = 1.0f;
                view.layer.borderColor =[UIColor grayColor].CGColor;
            
                
       id index =_deck[arc4random()% [_deck count]];
                NSLog(@"%@", index);
                
                
                
                
                viewLabel.text =faces[arc4random()%faces.count];
                viewLabel1.text = suits[arc4random()%suits.count];
                if([viewLabel1.text isEqualToString:@"♥" ] ||[viewLabel.text isEqualToString:@"♦"]){
                    viewLabel.textColor = [UIColor redColor];
                }
                
                    [view addSubview:viewLabel];
                
            
                [view addSubview:viewLabel1];
                
                [self.view addSubview:view];
          
            y =y-20+CardHeight;
        }
        x=x+2+CardWidth;
    }
    
}





         
@end
