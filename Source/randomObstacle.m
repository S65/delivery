//
//  randomObstacle.m
//  Delivery
//
//  Created by Grant Jennings on 2/6/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "randomObstacle.h"

@interface randomObstacle ()

@property (nonatomic,readwrite) int obstacleIndex;

@end

@implementation randomObstacle
static NSArray* _obstacleTextures;

#pragma mark - init

-(id)init{
    if (self = [super init]){
        
        if (_obstacleTextures == nil){
            _obstacleTextures = [NSArray arrayWithObjects:[CCSpriteFrame frameWithImageNamed:@"Delivery/Obstacles/Bomb Obstacle.png"],[CCSpriteFrame frameWithImageNamed:@"Delivery/Obstacles/Road Block.png"],[CCSpriteFrame frameWithImageNamed:@"Delivery/Obstacles/Cones Obstacle.png"],[CCSpriteFrame frameWithImageNamed:@"Delivery/Obstacles/Brick Wall Obstacle.png"],nil];
        }
        
        self.obstacleIndex = arc4random_uniform(3);
        self.spriteFrame = [_obstacleTextures objectAtIndex:self.obstacleIndex];
        self.rotation = 90;
        
        self.scale = 0.703;
        self.physicsBody = [CCPhysicsBody bodyWithCircleOfRadius:10 andCenter:ccp(self.textureRect.size.width/2.0,self.textureRect.size.height/2.0)];
        self.physicsBody.type = CCPhysicsBodyTypeDynamic;
        self.physicsBody.collisionType = @"level";
        self.physicsBody.collisionGroup = @0x02;
        
        // Respond to lighting
 //       NSArray *lightGroups = @[@"g1", @"g2"];
 //       self.effect = [CCEffectLighting effectWithGroups:lightGroups specularColor:[CCColor whiteColor] shininess:.1f];
        
        return self;
    }
    
    else return nil;
}

#pragma mark - Update

-(void)update:(CCTime)delta{
    if (self.physicsBody.type == CCPhysicsBodyTypeDynamic){
        self.physicsBody.velocity = ccp(self.physicsBody.velocity.x/1.1,self.physicsBody.velocity.y/1.1);
        self.physicsBody.angularVelocity = self.physicsBody.angularVelocity/1.1;
    }
}

#pragma mark - Support methods

-(int)getObstacleType{
    return (obstacleType)self.obstacleIndex;
}

@end
