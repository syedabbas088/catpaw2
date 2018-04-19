//
//  ThreeStar.h
//  Word in Pieces
//
//  Created by Saad Zubair on 1/30/14.
//  Copyright (c) 2014 Horizon Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomLeaderboardStructure.h"
#import "GADInterstitial.h"
#import "DataManager.h"
#import "GADBannerView.h"
#import <Chartboost/Chartboost.h>
#import <AdColony/AdColony.h>
#import "GameCenterController.h"
//#import "Chartboost.h"

@interface ThreeStar : UIViewController<GADInterstitialDelegate,AdColonyDelegate,AdColonyAdDelegate,ChartboostDelegate,GKGameCenterControllerDelegate>{
    
    bool showFullAds;
    
    NSNumberFormatter *fmt;
    
    GADBannerView *bannerView_;
    
    GADInterstitial *interstitial_;
    CGRect bound;



    
    DataManager *DataManagerSharedInstance;
    NSTimer *scoreTimer;
    NSTimeInterval interval;
    
    
    
    int scoreFont;
    int labelFont;

}

@property(strong, nonatomic) IBOutlet UILabel *textupper;
@property(strong, nonatomic) IBOutlet UILabel *texlower;
@property(strong, nonatomic) IBOutlet UILabel *HintsLabel;



@property(strong, nonatomic) UILabel * indexlabel;
@property(strong, nonatomic) UILabel * nameLabel;
@property(strong, nonatomic) UILabel * scorelabel;
@property(strong, nonatomic) UIImageView *myImage;

@property(strong, nonatomic) NSArray *categArray;


@property(weak, nonatomic) IBOutlet UITableView      *categories_table;


@property (nonatomic, retain) UIImageView *myImg;

@property (assign, nonatomic) NSInteger countoffriends;

@property (assign, nonatomic) NSInteger isCurrentLevelModeOfFive;


@property (assign, nonatomic) NSInteger scenarioNumber;

@property (assign, nonatomic) NSInteger adsTime;

@property (assign, nonatomic) NSInteger score;
@property (assign, nonatomic) NSInteger prevScore;
@property (assign, nonatomic) NSInteger totalScore;


- (IBAction)clicked_Tell_Your_Friends:(id)sender;
- (IBAction)btnGameCenter:(id)sender;

- (IBAction)clicked_Next_Level:(id)sender;
- (IBAction)facebookbuttonpressed:(id)sender ;
- (IBAction)btn_GetFreeHint:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *greenStarAsThird;
@property (strong, nonatomic) IBOutlet UIImageView *greenStarAsSecond;
@property (strong, nonatomic) IBOutlet UIImageView *greenStarAsFirst;
@property (strong, nonatomic) IBOutlet UIImageView *blueStarAsSecond;
@property (strong, nonatomic) IBOutlet UIImageView *blueStarAsFirst;
@property (strong, nonatomic) IBOutlet UIImageView *purpleStarAsFirst;

@property (weak, nonatomic) IBOutlet UILabel *label_Score;
@property (weak, nonatomic) IBOutlet UIButton *btnFreeHint;
@property (strong,nonatomic) IBOutlet UIImageView* ourloginView;

@property (strong, nonatomic) NSMutableArray *scoreDetails;



@property (weak, nonatomic) IBOutlet UIImageView *label_On_Level_Complete;

@property (weak, nonatomic) IBOutlet UILabel *fetchingScoreLabel;


@end
