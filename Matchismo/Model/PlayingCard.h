//
//  PlayingCard.h
//  Matchismo
//
//  Created by Wuqifu on 13-4-27.
//  Copyright (c) 2013年 Wuqifu. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
