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
        _gameOver = NO;
        
    }
    
    return self;
    
}
-(void)rollDice {
    
    NSInteger rollDice = arc4random_uniform(6) + 1;
    
    self.currentSquare += rollDice;
    
    self.output = [NSString stringWithFormat:@"You rolled on %ld", (long)self.currentSquare];
    NSLog(@"%@", self.output);
    
    NSNumber *myNum = @(self.currentSquare);
    
    for (id key in self.gameLogic ) {
        
        if ([myNum isEqualToNumber:key]) {
            
            self.currentSquare = [[self.gameLogic objectForKey:key] integerValue];
            
        }
        
    }
    
    if (self.currentSquare >= 100) {
        
        self.output = [NSString stringWithFormat:@"You landed on %ld, the game is over", (long)self.currentSquare];
        NSLog(@"%@", self.output);
        self.gameOver = YES;
        
    } else {
        
        self.output = [NSString stringWithFormat:@"You landed on %ld", (long)self.currentSquare];
        NSLog(@"%@", self.output);
        
    }
    
}

@end
