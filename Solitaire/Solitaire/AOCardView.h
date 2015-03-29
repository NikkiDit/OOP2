//
//  AOCardView.h
//  Solitaire
//
//  Created by Adenike Olatunji on 24/03/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AOCardView : NSObject
@property (nonatomic, retain) NSString *suit;
@property (nonatomic, retain) NSString *face;
@property (nonatomic, getter=isChosen) BOOL *chosen; //to change the name of the getter
@property (nonatomic, getter=isMatched) BOOL *matched;

- (id)initWithFace:(NSString*)face suit:(NSString*)suit;
-(void) matched: (NSArray *) otherCards;



@end
