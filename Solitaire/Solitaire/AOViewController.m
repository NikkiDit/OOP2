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



const CGFloat CardWidth = 43.0f;   // this includes drop shadows
const CGFloat CardHeight = 50.0f;

const CGFloat SuitWidth = 17.0f;   // this includes drop shadows
const CGFloat SuitHeight = 13.0f;

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
   // int suitnum = 1;
  //  for (AOCardView *card in _deck){
      //  NSLog(@"%@", card.suit );
      //  NSLog(@"%d", suitnum++);
   // }
}










- (void) createCardDeck{
    
    int labelCount = [_deck count];
    int  b;
    int x= 5;
    int m = 0;
    for (int i=1; i<=7; i++) {
        int y = 20;
        if (i==7){
            b=labelCount-m;
        }else{
            
            b=random() % 12;
        }
        
     
            for (int j=1; j<=b; j++) {
            
            CGRect  viewRect = CGRectMake(x, y, CardWidth, CardHeight);
            UIView *view = [[UIView alloc] initWithFrame:viewRect];
            [view setContentMode:UIViewContentModeCenter]
                ;
                view.clipsToBounds = YES;
                view.backgroundColor = [UIColor whiteColor];
              //  UILabel *viewLabel = [[UILabel alloc] initWithFrame:CGRectMake(2,6,FaceWidth,FaceHeight)];
               // UILabel *viewLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(10,24,SuitWidth,SuitHeight)];
                 UILabel *viewLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(10,10,SuitWidth,SuitHeight)];
                [viewLabel3  setContentScaleFactor:0.2f];
                viewLabel3.clipsToBounds = YES;
                
                
                view.layer.cornerRadius = 5;
                view.layer.borderWidth = 1.0f;
                view.layer.borderColor =[UIColor grayColor].CGColor;
            
                
             
                    AOCardView *card =[_deck objectAtIndex:random() % [_deck count]];
                    viewLabel3.text = card.description;
                
                //    NSLog(@"%@", viewLabel3.text);
                
               if([viewLabel3.text containsString:@"♥" ] ||[viewLabel3.text containsString:@"♦"]){
                    viewLabel3.textColor = [UIColor redColor];
                }
               // }
            
                [view addSubview:viewLabel3];
                //[view addSubview:viewLabel1];
                [self.view addSubview:view];
                [_deck removeObject:card];
                y =y-20+CardHeight;
                
                if (m<(labelCount+1)) {
                    m =m+1;
                }else{
                    return;
                }
            }
        x=x+1+CardWidth;
        
            }
    
}





         
@end
