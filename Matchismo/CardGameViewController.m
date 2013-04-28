//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Wuqifu on 13-4-27.
//  Copyright (c) 2013年 Wuqifu. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"flips: %d", self.flipCount];
    //NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
    if (sender.isSelected) {
        Card *card = [self.deck drawRandomCard];
                
        if (card) {
            [sender setTitle:card.contents forState:UIControlStateSelected];
            self.flipCount++;
        } else {
            [sender setTitle:@"X" forState:UIControlStateNormal];
            [sender setTitle:@"X" forState:UIControlStateSelected];
            NSLog(@"There is no card in deck now...");            
        }
    }
    
    sender.selected = !sender.isSelected;
    
}



@end
