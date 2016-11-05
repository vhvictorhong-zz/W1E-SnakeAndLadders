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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = true;
        Player *playerOne = [[Player alloc] init];
        
        NSLog(@"Welcome to the game of Snake & Ladders");
        NSLog(@"roll/r - To roll the dice\nquit - To quit game");
        
        while (gameOn) {
            
            NSString *inputString = [InputHandler getInput];
            
            if ([inputString isEqualToString:@"roll"] || [inputString isEqualToString:@"r"]) {
                
                [playerOne rollDice];
                
            } else if ([inputString isEqualToString:@"quit"]) {
                
                gameOn = false;
                
            }
            
        }
        
    }
    return 0;
}
