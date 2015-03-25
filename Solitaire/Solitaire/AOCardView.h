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

@property (nonatomic, readonly) NSInteger value;

- (id)initWithFace:(NSString*)face suit:(NSString*)suit;

@end
