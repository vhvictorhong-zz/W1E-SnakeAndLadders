//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Victor Hong on 06/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property NSMutableArray *players;

-(void)createPlayers:(NSString *)numberOfPlayers;

@end
