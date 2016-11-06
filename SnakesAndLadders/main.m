//
//  main.m
//  SnakesAndLadders
//
//  Created by Victor Hong on 05/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = true;
        BOOL isNoPlayers = true;
        
        Player *playerOne = [[Player alloc] init];
        PlayerManager *playerManager = [[PlayerManager alloc] init];
        
        NSLog(@"Welcome to the game of Snake & Ladders");
        NSLog(@"# - Enter the number of players playing");
        
        NSString *inputString = [InputHandler getInput];
        
        while (isNoPlayers) {
            
            if ([inputString integerValue]) {
                
                [playerManager createPlayers:inputString];
                
            }
            
            if ([playerManager.players count] != 0) {
                
                isNoPlayers = false;
                
            } else {
                
                NSLog(@"You have enter no players\n# - Please enter the number of players playing");
                
                inputString = [InputHandler getInput];
                
            }
            
        }
        
        while (gameOn) {
            
            NSLog(@"roll/r - To roll the dice\nquit - To quit game");
            
            inputString = [InputHandler getInput];
            
            if ([inputString isEqualToString:@"roll"] || [inputString isEqualToString:@"r"]) {
                
                [playerOne rollDice];
                
                if (playerOne.gameOver) {
                    
                    NSLog(@"play - To play the game again\nquit - To quit game");
                    
                    inputString = [InputHandler getInput];
                    
                    if ([inputString isEqualToString:@"play"]) {
                        
                        playerOne.currentSquare = 0;
                        playerOne.gameOver = NO;
                        
                    } else if ([inputString isEqualToString:@"quit"]) {
                        
                        gameOn = false;
                        
                    }
                }
                
            } else if ([inputString isEqualToString:@"quit"]) {
                
                gameOn = false;
                
            }
            
        }
        
    }
    return 0;
}
