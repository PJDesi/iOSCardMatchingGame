//
//  ViewController.m
//  CardGame
//
//  Created by Paul Desamero on 3/30/15.
//  Copyright (c) 2015 Paul.Desamero. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) Deck *deck;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation ViewController

- (CardMatchingGame *)game
{
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    
    return _game;
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}


- (IBAction)touchCardButton:(UIButton *)sender
{
    
//    if ([sender.currentTitle length]) {
//        //local variable to hold the cardBack image
//        UIImage *cardImage = [UIImage imageNamed:@"cardBack"];
//        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
//        [sender setTitle:@"" forState:UIControlStateNormal];
//    } else {
//        Card *randomCard = [self.deck drawRandomCard];
//        if (randomCard) { //Protect against an empty deck
//            //local variable to hold the cardBack image
//            UIImage *cardImage = [UIImage imageNamed:@"cardFront"];
//            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
//            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
//        }
//    }
//    self.flipCount++;
//    NSLog(@"Touch Count is: %d", self.flipCount);
    NSLog(@"In Touch Card Button");
    NSInteger chosenButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
}

- (void)updateUI
{
    NSLog(@"In UpdateUI");
    for (UIButton *cardButton in self.cardButtons) {
        NSInteger cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        NSLog(@"In UpdateUI For loop");
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroungImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    
}

- (NSString *)titleForCard:(Card *)card
{
    return card.isChosen ? card.contents : @"";
}

- (UIImage *)backgroungImageForCard:(Card *)card
{
    return [UIImage imageNamed:card.isChosen ? @"cardFront" : @"cardBack"];
}

@end
