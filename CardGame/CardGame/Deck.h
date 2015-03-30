//
//  Deck.h
//  CardGame
//
//  Created by Paul Desamero on 3/30/15.
//  Copyright (c) 2015 Paul.Desamero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;


@end
