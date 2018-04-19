//
//  GameCenterController.h
//  Deen Factor
//
//  Created by Muhammad Awais on 3/11/15.
//  Copyright (c) 2015 Hassan. All rights reserved.
//

@protocol GameKitHelperProtocol<NSObject>
@optional
-(void) onScoresSubmitted:(bool)success;
@end

#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>
#import "GameCenterController.h"

@interface GameCenterController : UIViewController <GKGameCenterControllerDelegate,UINavigationControllerDelegate>
{
    NSString *_leaderboardIdentifier;
    bool _gameCenterEnabled;
    NSString *achievementIdentifier;
}

@property (nonatomic, assign) id<GameKitHelperProtocol> delegate;
@property (nonatomic, readonly) NSError* lastError;

+ (GameCenterController *)instance;
-(void)authenticateLocalPlayer;
-(void)updateAchievements;
-(void)updateAchievements : (NSString *) identifier : (NSInteger) percent;
-(void)showLeaderboardAndAchievements:(BOOL)shouldShowLeaderboard;
-(void) submitScore:(int64_t)score category:(NSString*)category;
-(void) onScoresSubmitted:(bool)success;

@end
