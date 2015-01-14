//
//  Menu.m
//  Delivery
//
//  Created by Andrew Robinson on 1/4/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Menu.h"

@implementation Menu

- (void)play {
    CCScene *gameplayScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] pushScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.5]];
}

- (void)cars {
    CCScene *gameplayScene = [CCBReader loadAsScene:@"CarMenu"];
    [[CCDirector sharedDirector] pushScene:gameplayScene
                            withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionLeft duration:.5]];
}

@end
