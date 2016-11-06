//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Victor Hong on 06/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

-(instancetype)init {
    
    if (self = [super init]) {
        
        _players = [[NSMutableArray alloc] init];
        
    }
    
    return self;
    
}

-(void)createPlayers:(NSString *)numberOfPlayers {
    
    for (int i = 1; i <= [numberOfPlayers integerValue]; i ++) {
        
        NSString *createPlayer = [NSString stringWithFormat:@"player%d", i];
        
        [self.players addObject:createPlayer];
        
    }
    
}

-(void)roll {
    
    Player *player = [[Player alloc] init];
    
    [player rollDice];
    
}

-(void)output {
    
}

@end
