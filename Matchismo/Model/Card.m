//
//  Card.m
//  Matchismo
//
//  Created by Wuqifu on 13-4-27.
//  Copyright (c) 2013年 Wuqifu. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards
{
    int score = 0;

    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;

}


@end
