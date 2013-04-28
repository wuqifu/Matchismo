//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Wu, Qifu (Colin) on 13-4-28.
//  Copyright (c) 2013年 Wuqifu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

- (id)initWithCardCount:(NSUInteger)cardCount
              usingDeck:(Deck*)deck;

- (void)flipCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) int score;

@end
