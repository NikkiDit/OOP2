//
//  AOViewController.h
//  Solitaire
//
//  Created by Adenike Olatunji on 23/03/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface AOViewController : UIViewController
@property (strong, nonatomic) UIView *cardView;



- touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
@end
