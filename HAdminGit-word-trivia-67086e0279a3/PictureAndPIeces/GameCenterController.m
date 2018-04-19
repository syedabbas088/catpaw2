////
////  GameCenterController.m
////  Deen Factor
////
////  Created by Muhammad Awais on 3/11/15.
////  Copyright (c) 2015 Hassan. All rights reserved.
////
//
//#import "GameCenterController.h"
//
//@implementation GameCenterController
//
//#define kHighScoreLeaderboardCategory @"HighScores"
//
//static GameCenterController *sharedSingleton;
//
//+ (GameCenterController *)instance
//{
//    @synchronized(self)
//    {
//        if (sharedSingleton == NULL)
//            sharedSingleton = [[self alloc] init];
//    }
//    
//    return(sharedSingleton);
//}
//
//-(void)authenticateLocalPlayer{
//    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
//    
//    GKLocalPlayer *localPlayer = [GKLocalPlayer localPlayer];
//    
//    localPlayer.authenticateHandler = ^(UIViewController *viewController, NSError *error){
//        if (viewController != nil) {
//            [self presentViewController:viewController];
//        }
//        else{
//            if ([GKLocalPlayer localPlayer].authenticated) {
//                _gameCenterEnabled = YES;
//                [user setObject:@"yes" forKey:@"gameCenter"];
//                // Get the default leaderboard identifier.
//                [[GKLocalPlayer localPlayer] loadDefaultLeaderboardIdentifierWithCompletionHandler:^(NSString *leaderboardIdentifier, NSError *error) {
//                    
//                    if (error != nil) {
//                        NSLog(@"%@", [error localizedDescription]);
//                    }
//                    else{
//                        _leaderboardIdentifier = leaderboardIdentifier;
//                        NSUserDefaults *currentUser = [NSUserDefaults standardUserDefaults];
//                        [currentUser setObject:_leaderboardIdentifier forKey:@"leaderBoard"];
//                    }
//                }];
//            }
//            else{
//                _gameCenterEnabled = NO;
//                [user setObject:@"no" forKey:@"gameCenter"];
//            }
//        }
//    };
//}
//
//-(void) setLastError:(NSError*)error
//{
//    _lastError = [error copy];
//    if (_lastError) {
//        NSLog(@"GameKitHelper ERROR: %@", [[_lastError userInfo]
//                                           description]);
//    }
//}
//
//#pragma mark UIViewController stuff
//
//-(UIViewController*) getRootViewController {
//    return [UIApplication
//            sharedApplication].keyWindow.rootViewController;
//}
//
//-(void)presentViewController:(UIViewController*)vc {
//    UIViewController* rootVC = [self getRootViewController];
//    [rootVC presentViewController:vc animated:YES
//                       completion:nil];
//}
//-(void)updateAchievements : (NSString *) identifier : (NSInteger) percent{
//    //    NSString *achievementIdentifier;
//    
//    if([identifier isEqualToString:@"islamicHisOne"])
//    {
//        achievementIdentifier = @"df.emir.achievment";
//    }
//    if([identifier isEqualToString:@"islamicHisTwo"])
//    {
//        achievementIdentifier = @"df.sultan.achievment";
//    }
//    if([identifier isEqualToString:@"islamicHisThree"])
//    {
//        achievementIdentifier = @"df.khalifa.achievment";
//    }
//    if([identifier isEqualToString:@"islamAroundOne"])
//    {
//        achievementIdentifier = @"df.travller.achievment";
//    }
//    if([identifier isEqualToString:@"islamAroundTwo"])
//    {
//        achievementIdentifier = @"df.pilgrim.achievment";
//    }
//    if([identifier isEqualToString:@"islamAroundThree"])
//    {
//        achievementIdentifier = @"df.ibnbatuta.achievment";
//    }
//    if([identifier isEqualToString:@"islamicHerOne"])
//    {
//        achievementIdentifier = @"df.curious.achievment";
//    }
//    if([identifier isEqualToString:@"islamicHerTwo"])
//    {
//        achievementIdentifier = @"df.archeologist.achievment";
//    }
//    if([identifier isEqualToString:@"islamicHerThree"])
//    {
//        achievementIdentifier = @"df.erudite.achievment";
//    }
//    if([identifier isEqualToString:@"twentyOne"])
//    {
//        achievementIdentifier = @"df.scout.achievment";
//    }
//    if([identifier isEqualToString:@"twentyTwo"])
//    {
//        achievementIdentifier = @"df.aidworker.achievment";
//    }
//    if([identifier isEqualToString:@"twentyThree"])
//    {
//        achievementIdentifier = @"df.changemaker.achievment";
//    }
//    if([identifier isEqualToString:@"religionOne"])
//    {
//        achievementIdentifier = @"df.imam.achievment";
//    }
//    if([identifier isEqualToString:@"religionTwo"])
//    {
//        achievementIdentifier = @"df.judge.achievment";
//    }
//    if([identifier isEqualToString:@"religionThree"])
//    {
//        achievementIdentifier = @"df.sheikh.achievment";
//    }
//    
//    float progressPercentage = percent;
//    BOOL progressInLevelAchievement = NO;
//    
//    GKAchievement *levelAchievement = nil;
//    GKAchievement *scoreAchievement = nil;
//    
//    progressInLevelAchievement = YES;
//    
//    scoreAchievement = [[GKAchievement alloc] initWithIdentifier:achievementIdentifier];
//    scoreAchievement.percentComplete = progressPercentage;
//    
//    if (progressInLevelAchievement) {
//        levelAchievement = [[GKAchievement alloc] initWithIdentifier:achievementIdentifier];
//        levelAchievement.percentComplete = percent;
//    }
//    
//    NSArray *achievements = (progressInLevelAchievement) ? @[levelAchievement, scoreAchievement] : @[scoreAchievement];
//    
//    [GKAchievement reportAchievements:achievements withCompletionHandler:^(NSError *error) {
//        if (error != nil) {
//            //            NSLog(@&quot;%@&quot;, [error localizedDescription]);
//        }
//    }];
//}
//
//-(void)showLeaderboardAndAchievements:(BOOL)shouldShowLeaderboard{
//    GKGameCenterViewController *gcViewController = [[GKGameCenterViewController alloc] init];
//    
//    gcViewController.gameCenterDelegate = self;
//    
//    if (shouldShowLeaderboard) {
//        if(!_gameCenterEnabled)
//        {
//            [self authenticateLocalPlayer];
//        }
//        gcViewController.viewState = GKGameCenterViewControllerStateLeaderboards;
//        gcViewController.leaderboardIdentifier = @"com.horizon.wordMaker.scores";
//    }
//    else{
//        gcViewController.viewState = GKGameCenterViewControllerStateAchievements;
//    }
//    
//    [self presentViewController:gcViewController];
//}
//
//- (void)gameCenterViewControllerDidFinish:(GKGameCenterViewController *)gameCenterViewController
//{
//    
//    [gameCenterViewController.presentingViewController dismissViewControllerAnimated:YES completion:^(void){}];
//}
//
//-(void) submitScore:(int64_t)score category:(NSString*)category {
//    //1: Check if Game Center
//    //   features are enabled
//    if (!_gameCenterEnabled) {
////        CCLOG(@"Player not authenticated");
//        return;
//    }
//    
//    //2: Create a GKScore object
//    GKScore* gkScore = [[GKScore alloc] initWithLeaderboardIdentifier:@"com.horizon.wordMaker.scores"];
//    
//    //3: Set the score value
//    gkScore.value = score;
//    
//    //4: Send the score to Game Center
//    [GKScore reportScores:@[gkScore] withCompletionHandler:^(NSError  *error)
//     {
//         [self setLastError:error];
//         BOOL success = (error == nil);
//         
//         if ([_delegate respondsToSelector: @selector(onScoresSubmitted:)])
//         {
//             [_delegate onScoresSubmitted:success];
//         }
//     }];
//    /*[gkScore reportScoreWithCompletionHandler:
//     ^(NSError* error) {
//         
//         [self setLastError:error];
//         
//         BOOL success = (error == nil);
//         
//         if ([_delegate
//              respondsToSelector:
//              @selector(onScoresSubmitted:)]) {
//             
//             [_delegate onScoresSubmitted:success];
//         }
//     }];*/
//}
//
//-(void) onScoresSubmitted:(bool)success
//{
//    
//}
//
//@end
