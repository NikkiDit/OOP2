//
//  ViewController.h
//  AutoLayout
//
//  Created by Adenike Olatunji on 13/04/2015.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *viewButton;
@property (weak, nonatomic) IBOutlet UILabel *colorName;
- (IBAction)PressedButton:(id)sender;

@end
