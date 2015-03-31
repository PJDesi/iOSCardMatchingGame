//
//  PlayingCard.h
//  CardGame
//
//  Created by Paul Desamero on 3/30/15.
//  Copyright (c) 2015 Paul.Desamero. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger *)maxRank;

@end
