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
        _gameLogic = @{@4:@14,
                       @9:@31,
                       @17:@8,
                       @20:@38,
                       @28:@84,
                       @40:@89,
                       @51:@67,
                       @63:@81,
                       @64:@60,
                       @89:@26,
                       @95:@75,
                       @99:@78};
        
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
