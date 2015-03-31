//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Paul Desamero on 3/31/15.
//  Copyright (c) 2015 Paul.Desamero. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(instancetype)init
{
    self = [super init];
 
    /*
     return nil if you cannot initialize this object. This is the ONLY time you would ever assign something to self. But we have to check to see if our superclass can inialize itself. The assignment to self is a bit of protection against ourselves if our super class couldn't initialize.
     */
    if (self){
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <=[PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
        
    }
    return self;
}

@end
