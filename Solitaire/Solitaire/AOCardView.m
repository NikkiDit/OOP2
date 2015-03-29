//
//  AOCardView.m
//  Solitaire
//
//  Created by Adenike Olatunji on 24/03/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import "AOCardView.h"

@implementation AOCardView
- (id)initWithFace:(NSString *)face suit:(NSString *)suit{
    self = [super init];
    if(!self) { return nil; }
    
    _face = face;
    _suit = suit;
    return self;
}

-(void)matched:(NSArray *)otherCards{
    
    for (AOCardView *card in otherCards){
        if ([card.description isEqualToString:self.description]){
            NSLog(@"%@", self.description);
        }
    }
    
    
}
- (NSString*)description{
    return [NSString stringWithFormat:@"%@%@",_face,_suit];
}
@end
