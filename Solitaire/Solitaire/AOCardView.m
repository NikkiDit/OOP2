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

- (NSInteger)value{
    NSDictionary *values = @{
                             @"A": @10,
                             @"1": @1,
                             @"2": @2,
                             @"3": @3,
                             @"4": @4,
                             @"5": @5,
                             @"6": @6,
                             @"7": @7,
                             @"8": @8,
                             @"9": @9,
                             @"10": @10,
                             @"J": @10,
                             @"Q": @10,
                             @"K": @10
                             };
    
    NSNumber *value = values[_face];
    if(value){
        return value.integerValue;
    }else{
        return 0;
    }
}

- (NSString*)description{
    return [NSString stringWithFormat:@"%@%@",_face,_suit];
}
@end
