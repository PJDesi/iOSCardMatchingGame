//
//  PlayingCard.m
//  CardGame
//
//  Created by Paul Desamero on 3/30/15.
//  Copyright (c) 2015 Paul.Desamero. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

/* Since the setter and getter are BOTH manually implemented for a property,
then you have to create the instance variable for the property yourself,
using @synthesize. suit is the name of the property we're creating an instance
variable for; _suit is the name of the instance variable to associate with the
property.
*/
 @synthesize  suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♣️", @"♠️", @"♥️", @"♦️"];
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8",@"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger *)maxRank
{
    return [[self rankStrings] count]-1;
}

-(void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}


@end
