//
//  Deck.m
//  CardGame
//
//  Created by Paul Desamero on 3/30/15.
//  Copyright (c) 2015 Paul.Desamero. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards; //of Card
@end



@implementation Deck

- (NSMutableArray *)cards
{
    //lazy instantiation
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}


- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

//simply grabs a random card from a random spot in
//our self.cards array
- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}


@end
