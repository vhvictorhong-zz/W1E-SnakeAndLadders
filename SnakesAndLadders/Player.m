//
//  Player.m
//  SnakesAndLadders
//
//  Created by Victor Hong on 05/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)init {
    
    if (self = [super init]) {
        
        _currentSquare = 0;
        
    }
    
    return self;
    
}
-(void)rollDice {
    
    NSInteger rollDice = arc4random_uniform(6) + 1;
    
    self.currentSquare += rollDice;
    
    NSLog(@"%ld", (long)rollDice);
    
    NSLog(@"Current square %ld", (long)self.currentSquare);
    
}

@end
