////
////  ThreeStar.m
////  Word in Pieces
////
////  Created by Saad Zubair on 1/30/14.
////  Copyright (c) 2014 Horizon Technology. All rights reserved.
////
//
//#import "ThreeStar.h"
//#import <Social/Social.h>
//
//@interface ThreeStar ()
//{
//    BOOL isAdAlreadyShown;
//    NSString *userName,*userID;
//}
//@end
//
//@implementation ThreeStar
//
//
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}
//#pragma mark - View loading life cycle
//
//-(void)viewWillAppear:(BOOL)animated
//{
////    Best Score HighScores
//    NSLog(@"score == %d",self.totalScore);
//    [[GameCenterController instance] submitScore:(int64_t)self.totalScore
//                                        category:@"Best Score"];
//}
//- (void)viewDidLoad
//{
//    
//    
//    showFullAds = true;
//    [self ConfigAds];
//    if([[DataManager DataManagerSharedInstance] Is_No_Thanks_Not_Clicked_To_Hide_Appirater] && self.isCurrentLevelModeOfFive == 1 && ![[DataManager DataManagerSharedInstance] Is_Rating_Done]){
//        [[DataManager DataManagerSharedInstance] ShowAppirater];
//        showFullAds = false;
//    }
//    fmt = [[NSNumberFormatter alloc] init];
//    [fmt setNumberStyle:NSNumberFormatterDecimalStyle]; // to get commas (or locale equivalent)
//    [fmt setMaximumFractionDigits:0]; // to avoid any decimal
//    
//    //scoreDetails = [DataManager DataManagerSharedInstance].scoresUpdate;
//    
//    [super viewDidLoad];
//    // Do any additional setup after loading the view from its nib.
//    [[DataManager DataManagerSharedInstance] FlurryCall:@"Level Completed"];
//    
////    if([[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
////        [self.loginView setHidden:YES];
////        self.texlower.hidden=YES;
////        self.textupper.hidden=YES;
////        self.HintsLabel.hidden=YES;
////        
////        self.loginView=NULL;
////    }
//    
//    
//    
//    
//    bound = [[UIScreen mainScreen] bounds];
//    
//    if(![[DataManager DataManagerSharedInstance] Is_AdFree])
//    {
//        if([[DataManager DataManagerSharedInstance] Is_Lower_Device]){
//            
//        }
//        else{
//            [self show_BannerAds];
//            //if(self.adsTime == 1)
//            {
//               /* if([[DataManager DataManagerSharedInstance] Is_ChartBoost_Time])
//                {
//                    [self show_ChartBoost_Ads];
//                }
//                else*/
//                
//                if(showFullAds)
//                {
//                    [self show_Ads];
//                }
//            }
//        }
//    }
////    
////    self.loginView = [[FBLoginView alloc] init];
////    if(bound.size.height>568){
////        //self.loginView.frame = CGRectMake(bound.size.width*1/4, bound.size.height*3/4, bound.size.width/2, bound.size.height*0.77083);
////        self.loginView.frame = CGRectMake(140, 560, 480, 128);
////        scoreFont = 40;
////        labelFont = 25;
////    }
////    else if(bound.size.height==568){
////        self.loginView.frame = CGRectOffset(self.loginView.frame, 50, 320);
////        scoreFont = 20;
////        labelFont = 14;
////    }
////    else if(bound.size.height<568){
////        self.loginView.frame = CGRectOffset(self.loginView.frame, 50, 250);
////        scoreFont = 20;
////        labelFont = 14;
////    }
//    
//    //NSLog(@"upperlabel frame:%@",NSStringFromCGRect(self.textupper.frame));
//    [self.textupper setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//    [self.texlower setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//    [self.HintsLabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//    [self.fetchingScoreLabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//
//
//    self.categories_table.hidden=true;
//    self.categories_table.separatorStyle = UITableViewCellSeparatorStyleNone;
//    self.categories_table.backgroundColor=[UIColor clearColor];
//    
//    
//    
////    self.loginView.delegate =self;
////    
////    //self.loginView.publishPermissions = @[@"publish_actions",@"user_photos",@"user_friends",@"user_videos",@"email",@"public_profile",@"user_posts"];
////    self.loginView.publishPermissions = @[@"publish_actions",@"user_friends"];
////    self.loginView.defaultAudience = FBSessionDefaultAudienceFriends;
////    //[self.view addSubview:self.loginView];
////    
//    self.scoreDetails = [NSMutableArray new];
//    
//    
//    
//    self.prevScore = [[DataManager DataManagerSharedInstance] Get_Score];
//    
//    self.totalScore = self.prevScore + self.score;
//    
//    
//
//
//    
//    
//    [[DataManager DataManagerSharedInstance] Set_Score:self.totalScore];
//    
//    
//    [self.label_Score setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:scoreFont]];
//    //label_Score.text = [NSString stringWithFormat:@"Score: %i",prevScore];
//    if(self.prevScore>=10000){
//        NSString *result = [fmt stringFromNumber:@(self.prevScore)];
//        result = [result stringByReplacingOccurrencesOfString:@" " withString:@","];
//        //NSLog(@"THIS IS THE SCORE: %@", result);
//        self.label_Score.text = [NSString stringWithFormat:@"Score: %@",result];
//    }
//    else{
//        self.label_Score.text = [NSString stringWithFormat:@"Score: %i",self.prevScore];
//    }
//    
//    interval = 1.0/24000000;
//    
//    [self performSelector:@selector(startTimer) withObject:nil afterDelay:0.5 ];
//    
//    
//    
//    
//    if(self.scenarioNumber == 1){
//        
//        int min = 1;
//        int max = 2;
//        
//        int textNumber = arc4random() % (max - min) + min;
//
//
//        if(textNumber == 1){
//            UIImage * winLabelImage=[UIImage imageNamed:@"nice.png"];
//            [self.label_On_Level_Complete setImage:winLabelImage];
//        }
//        else if(textNumber == 2){
//            UIImage * winLabelImage=[UIImage imageNamed:@"goodjob.png"];
//            [self.label_On_Level_Complete setImage:winLabelImage];
//        }
//        
//        self.greenStarAsFirst.hidden = NO;
//        self.greenStarAsSecond.hidden = YES;
//        self.greenStarAsThird.hidden = YES;
//        
//        self.blueStarAsFirst.hidden = YES;
//        self.blueStarAsSecond.hidden = YES;
//        
//        self.purpleStarAsFirst.hidden = YES;
//    }
//    else if(self.scenarioNumber == 2){
//        int min = 1;
//        int max = 3;
//        
//        int textNumber = arc4random() % (max - min) + min;
//
//        
//        if(textNumber == 1){
//            UIImage * winLabelImage=[UIImage imageNamed:@"Awesome.png"];
//            [self.label_On_Level_Complete setImage:winLabelImage];
//        }
//        else if(textNumber == 2){
//            UIImage * winLabelImage=[UIImage imageNamed:@"welldone.png"];
//            [self.label_On_Level_Complete setImage:winLabelImage];
//        }
//        else if(textNumber == 3){
//            UIImage * winLabelImage=[UIImage imageNamed:@"Marvelous.png"];
//            [self.label_On_Level_Complete setImage:winLabelImage];
//        }
//        
//        
//        self.greenStarAsFirst.hidden = YES;
//        self.greenStarAsSecond.hidden = NO;
//        self.greenStarAsThird.hidden = YES;
//        
//        self.blueStarAsFirst.hidden = NO;
//        self.blueStarAsSecond.hidden = YES;
//        
//        self.purpleStarAsFirst.hidden = YES;
//        
//    }
//    else if(self.scenarioNumber == 3){
//        
//        int min = 1;
//        int max = 3;
//        
//        int textNumber = arc4random() % (max - min) + min;
//
//        
//        
//        if(textNumber == 1){
//            UIImage * winLabelImage=[UIImage imageNamed:@"Fantastic.png"];
//            [self.label_On_Level_Complete setImage:winLabelImage];
//        }
//        else if(textNumber == 2){
//            UIImage * winLabelImage=[UIImage imageNamed:@"superb.png"];
//            [self.label_On_Level_Complete setImage:winLabelImage];
//        }
//        else if(textNumber == 3){
//            UIImage * winLabelImage=[UIImage imageNamed:@"Excellent.png"];
//            [self.label_On_Level_Complete setImage:winLabelImage];
//        }
//        
//        
//        self.greenStarAsFirst.hidden = YES;
//        self.greenStarAsSecond.hidden = YES;
//        self.greenStarAsThird.hidden = NO;
//        
//        self.blueStarAsFirst.hidden = YES;
//        self.blueStarAsSecond.hidden = NO;
//        
//        self.purpleStarAsFirst.hidden = NO;
//    }
//    
//    
//    /*countoffriends=[scoreDetails count];
//    [categories_table reloadData];
//    [self.view bringSubviewToFront:categories_table];*/
//    
//}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//-(void)ConfigAds
//{
//    [Chartboost startWithAppId:@"56949b162fdf34103263d1d1"
//                  appSignature:@"0879b886e0c204e44a7742fa0112be9b17432c7a"
//                      delegate:self];
//    
//    [AdColony configureWithAppID: @"appac0e8abd1a0f45a99d"
//                         zoneIDs: @[ @"vz38dec3f111f049a6af" ]
//                        delegate: self
//                         logging: YES];
//}
//#pragma mark - Custom methods
//-(void)show_Ads
//{
//    if([DataManager DataManagerSharedInstance].isAdLoaded==1)
//    {
//        interstitial_ = [DataManager DataManagerSharedInstance].interstitial;
//        [interstitial_ presentFromRootViewController:self];
//    }
//}
//
////-(void)show_ChartBoost_Ads
////{
////    [[Chartboost sharedChartboost] showInterstitial];
////}
//
//
//-(void)show_BannerAds
//{
//    bannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
//    
//    CGRect frame = bannerView_.frame;
//    CGRect frame2=[[UIScreen mainScreen] bounds];
//    
//    frame.origin.y = frame2.size.height - frame.size.height;
//    
//    
//    // Specify the ad unit ID.
//    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
//    {
//        bannerView_.adUnitID = @"a153033e203b88a";
//        frame.size.width=320;
//    }
//    else{
//        bannerView_.adUnitID = @"a153033e83657ab";
//        frame.size.width=768;
//    }
//    bannerView_.frame= frame;
//    // Let the runtime know which UIViewController to restore after taking
//    // the user wherever the ad goes and add it to the view hierarchy.
//    bannerView_.rootViewController = self;
//    [self.view addSubview:bannerView_];
//    [GADRequest request].testDevices=@[ @"195d9ebb46ed02ff7a41ae8b97108e5e" ];
//    
//    // Initiate a generic request to load it with an ad.
//    [bannerView_ loadRequest:[GADRequest request]];
//}
//
//
//-(void)timerUpdate{
//    if(self.totalScore <= self.prevScore){
//        //when reach the coin value,invalidate the timer
//        [scoreTimer invalidate];
//        //label_Score.text = [NSString stringWithFormat:@"Score: %i",totalScore];
//        
//        if(self.totalScore>=10000){
//            NSString *result = [fmt stringFromNumber:@(self.totalScore)];
//            result = [result stringByReplacingOccurrencesOfString:@" " withString:@","];
//            
//            
//            //NSLog(@"THIS IS THE SCORE: %@", result);
//            self.label_Score.text = [NSString stringWithFormat:@"Score: %@",result];
//        }
//        else{
//            self.label_Score.text = [NSString stringWithFormat:@"Score: %i",self.totalScore];
//        }
//        
//        
//        
//        
//    }
//    else if(self.totalScore > self.prevScore){
//        
//        self.prevScore=self.prevScore+50;
//        
//        //update coin label
//        //label_Score.text = [NSString stringWithFormat:@"Score: %i",prevScore];
//        
//        
//        
//        if(self.prevScore>=10000){
//            NSString *result = [fmt stringFromNumber:@(self.prevScore)];
//            result = [result stringByReplacingOccurrencesOfString:@" " withString:@","];
//            //NSLog(@"THIS IS THE SCORE: %@", result);
//            self.label_Score.text = [NSString stringWithFormat:@"Score: %@",result];
//        }
//        else{
//            self.label_Score.text = [NSString stringWithFormat:@"Score: %i",self.prevScore];
//        }
//    }
//    //label_Score.text = [NSString stringWithFormat:@"Score: %i",prevScore];
//}
//-(void)controlStatusUsable:(BOOL)usable {
//    if (usable) {
//        //        btnUploadImg.userInteractionEnabled = YES;
//        //        btnUpdateStatus.userInteractionEnabled = YES;
//        //        self.activity.hidden = YES;
//        //        [self.activity stopAnimating];
//    } else {
//        //        btnUploadImg.userInteractionEnabled = NO;
//        //        btnUpdateStatus.userInteractionEnabled = NO;
//        //        self.activity.hidden = NO;
//        //        [self.activity startAnimating];
//    }
//}
//
////-(void)promptUserWithAccountName
////{
////    [self controlStatusUsable:NO];
////    [[FBRequest requestForMe] startWithCompletionHandler:
////     ^(FBRequestConnection *connection, NSDictionary<FBGraphUser> *user, NSError *error) {
////         if (!error)
////         {
////             NSString *message = [NSString stringWithFormat:@"Do you want to share your Score with Friends?"];
////             userID=user.id;
////             userName=user.name;
////             UIAlertView *tmp = [[UIAlertView alloc]
////                                 initWithTitle:@"Share your score"
////                                 message:message
////                                 delegate:self
////                                 cancelButtonTitle:nil
////                                 otherButtonTitles:@"No",@"Yes", nil];
////             tmp.tag = 7999; // We are also setting the tag to this alert so we can identify it in delegate method later
////             [tmp show];
////             
////         }
////         [self controlStatusUsable:YES]; // whether error occur or not, enable back the UI
////     }];
////}
//-(void)startTimer
//{
//    scoreTimer = [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(timerUpdate) userInfo:Nil repeats:YES];
//}
//#pragma mark - ChartBoost DElegate Methods
//
//// Called after videos have been successfully prefetched.
//- (void)didPrefetchVideos
//{
//    
//}
//
//// Called before a rewarded video will be displayed on the screen.
//- (BOOL)shouldDisplayRewardedVideo:(CBLocation)location{
//    return YES;
//}
//
//// Called after a rewarded video has been displayed on the screen.
//- (void)didDisplayRewardedVideo:(CBLocation)location{
//    
//}
//
//// Called after a rewarded video has been loaded from the Chartboost API
//// servers and cached locally.
//- (void)didCacheRewardedVideo:(CBLocation)location;{
//    
//}
//
//// Called after a rewarded video has attempted to load from the Chartboost API
//// servers but failed.
//- (void)didFailToLoadRewardedVideo:(CBLocation)location
//                         withError:(CBLoadError)error{
//    [AdColony playVideoAdForZone:@"vz38dec3f111f049a6af"
//                    withDelegate:self
//                withV4VCPrePopup:YES
//                andV4VCPostPopup:YES];
//}
//
//// Called after a rewarded video has been dismissed.
//- (void)didDismissRewardedVideo:(CBLocation)location{
//    
//}
//
//// Called after a rewarded video has been closed.
//- (void)didCloseRewardedVideo:(CBLocation)location{
//    
//}
//
//// Called after a rewarded video has been clicked.
//- (void)didClickRewardedVideo:(CBLocation)location{
//    
//}
//
//// Called after a rewarded video has been viewed completely and user is eligible for reward.
//- (void)didCompleteRewardedVideo:(CBLocation)location
//                      withReward:(int)reward
//{
//    self.btnFreeHint.hidden=YES;
//    if (!isAdAlreadyShown)
//    {
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:1];
//        [[[UIAlertView alloc] initWithTitle:@"" message:@"You have earned 1 free hint" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
//        isAdAlreadyShown=YES;
//        
//    }
//}
//
//// Implement to be notified of when a video will be displayed on the screen for
//// a given CBLocation. You can then do things like mute effects and sounds.
//- (void)willDisplayVideo:(CBLocation)location{
//    
//}
//
//#pragma mark - AdColony
//
//- ( void ) onAdColonyV4VCReward:(BOOL)success currencyName:(NSString*)currencyName currencyAmount:(int)amount inZone:(NSString*)zoneID
//{
//    NSLog(@"AdColony zone %@ reward %i %i %@", zoneID, success, amount, currencyName);
//    
//    if (success)
//    {
//        self.btnFreeHint.hidden=YES;
//        if (!isAdAlreadyShown)
//        {
//            [[DataManager DataManagerSharedInstance] Add_Hint_count:1];
//            [[[UIAlertView alloc] initWithTitle:@"" message:@"You have earned 1 free hint" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
//            isAdAlreadyShown=YES;
//            
//        }
//    }
//    else {
//        
//    }
//}
//- (void)onAdColonyAdAttemptFinished:(BOOL)shown inZone:(NSString *)zoneID
//{
//    if (shown)
//    {
//        self.btnFreeHint.hidden=YES;
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:1];
//    }
//    else{
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sorry"
//                                                        message:@"There isn't any Video Ad available at the moment. Please try again in few minutes. Thanks"
//                                                       delegate:self
//                                              cancelButtonTitle:@"OK"
//                                              otherButtonTitles:nil];
//        [alert show];
//    }
//}
//
//#pragma mark - Buttons action methods
//
//- (IBAction)clicked_Tell_Your_Friends:(id)sender
//{
//   /*UIGraphicsBeginImageContext(self.view.frame.size);
//    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();*/
//    self.myImg = [[UIImageView alloc] init];
//    self.myImg.image= [UIImage imageNamed:@"Icon.png"];
//    
//    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
//    {
//        
//        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
//        
//        [controller setInitialText:@"Please help me in Word Trivia. Download Free at  http://itunes.apple.com/app/id813487876p"];
//        [controller addURL:[NSURL URLWithString:@"http://itunes.apple.com/app/id813487876"]];
//        [controller addImage:[UIImage imageNamed:@"Icon.png"]];
//        controller.completionHandler = ^(SLComposeViewControllerResult result) {
//            switch(result)
//            {
//                    //  This means the user cancelled without sending the Tweet
//                case SLComposeViewControllerResultCancelled:
//                    break;
//                    //  This means the user hit 'Send'
//                case SLComposeViewControllerResultDone:
//                {
//                    
//                    UIAlertView *tmp = [[UIAlertView alloc]
//                                        initWithTitle:@"Congratulations!!!"
//                                        message:@"You have successfully Shared"
//                                        delegate:self
//                                        cancelButtonTitle:nil
//                                        otherButtonTitles:@"OK", nil];
//                    
//                    [tmp show];
//                    break;
//                    
//                }
//            }
//        };
//        [self presentViewController:controller animated:YES completion:Nil];
//        
//    }
//    else
//    {
//        UIAlertView *tmp = [[UIAlertView alloc]
//                            initWithTitle:@"Word Trivia"
//                            message:@"Please set Facebook account credentials from settings"
//                            delegate:self
//                            cancelButtonTitle:nil
//                            otherButtonTitles:@"OK", nil];
//        
//        [tmp show];
//        
//    }
//
//    
//    //[self uploadPushed:self];
//    
//}
//
//- (IBAction)btnGameCenter:(id)sender {
//    
//    [[GameCenterController instance] showLeaderboardAndAchievements:YES];
//}
//- (IBAction)btn_GetFreeHint:(id)sender {
//    
//    [Chartboost showRewardedVideo:CBLocationMainMenu];
////    [AdColony playVideoAdForZone:@"vz38dec3f111f049a6af"
////                    withDelegate:self
////                withV4VCPrePopup:YES
////                andV4VCPostPopup:YES];
//}
//- (IBAction)clicked_Next_Level:(id)sender {
//    interstitial_.delegate=nil;
//    [scoreTimer invalidate];
//    [self.navigationController popViewControllerAnimated:YES];
//}
//
////- (IBAction)facebookbuttonpressed:(id)sender {
////    [self getScores];
////    //[self.navigationController popViewControllerAnimated:YES];
////}
//
////-(IBAction)uploadPushed:(id)sender
////{
////    if (FBSession.activeSession.isOpen)
////    {
////        
////        // Yes, we are open, so lets make a request for user details so we can get the user name.
////        [self promptUserWithAccountName];// a custom method - see below:
////
////    } else {
////        
////        // We don't have an active session in this app, so lets open a new
////        // facebook session with the appropriate permissions!
////        
////        // Firstly, construct a permission array.
////        // you can find more "permissions strings" at http://developers.facebook.com/docs/authentication/permissions/
////        // In this example, we will just request a publish_stream which is required to publish status or photos.
////        
////        NSArray *permissions = [[NSArray alloc] initWithObjects: @"user_photos,user_friends,user_videos,email,public_profile,user_posts",
////                                nil];
////        // OPEN Session!
////        [self controlStatusUsable:NO];
////        [FBSession openActiveSessionWithReadPermissions:permissions
////                                       allowLoginUI:YES
////                                  completionHandler:^(FBSession *session,
////                                                      FBSessionState status,
////                                                      NSError *error) {
////                                      // if login fails for any reason, we alert
////                                      if (error) {
////                                          
////                                          // show error to user.
////                                          
////                                      } else if (FB_ISSESSIONOPENWITHSTATE(status)) {
////                                          
////                                          // no error, so we proceed with requesting user details of current facebook session.
////                                          
////                                          [self promptUserWithAccountName];   // a custom method - see below:
////                                      }
////                                      [self controlStatusUsable:YES];
////                                  }];
////        //[FBSession openActiveSessionWithAllowLoginUI:YES];
////    }
////}
//
//
//#pragma mark - Alert view delegate methods
//
//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    if (alertView.tag==7999){ // yes answer
//        
//        // did the alert responded to is the one prompting about user name? if so, upload!
//        if (buttonIndex==1) {
//            // then upload
//            [self controlStatusUsable:NO];
//            // NSData* imageData = UIImageJPEGRepresentation(_myImg.image, 90);
//            
//            // @"Please help me to guess the Personality.\nhttps://itunes.apple.com/us/app/guess-aussies/id704407022?ls=1&mt=8"
//            
//            
//            
//            NSString *result;
//            if(self.totalScore>=10000){
//                result = [fmt stringFromNumber:@(self.totalScore)];
//                result = [result stringByReplacingOccurrencesOfString:@" " withString:@","];
//                //NSLog(@"THIS IS THE SCORE: %@", result);
//            }
//            else{
//                result = [NSString stringWithFormat:@"Score: %i",self.totalScore];
//            }
//            
//            NSString *scoreeee = [NSString stringWithFormat:@"My Score is %@ in Word Trivia game. Whats your Score ? Download the Free iOS game at  http://itunes.apple.com/app/id813487876", result];
//            
//            NSMutableDictionary * postParams = [NSMutableDictionary dictionaryWithObjectsAndKeys:
//                                                scoreeee, @"message",
//                                                self.myImg.image, @"picture",
//                                                nil];
////            // Here is where the UPLOADING HAPPENS!
////            [FBRequestConnection startWithGraphPath:@"me/photos"
////                                         parameters:postParams
////                                         HTTPMethod:@"POSt"
////                                  completionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
////                                      if (!error) {
////                                          
////                                          //[self shareReload];
////                                          
////                                          UIAlertView *tmp = [[UIAlertView alloc]
////                                                              initWithTitle:@"Congratulations!!!"
////                                                              message:@"Your Score has been successfully Shared with your Friends"
////                                                              delegate:self
////                                                              cancelButtonTitle:nil
////                                                              otherButtonTitles:@"Ok", nil];
////                                          
////                                          [tmp show];
////                                      } else {
////                                          NSLog(@"error:%@",error );
////                                          UIAlertView *tmp = [[UIAlertView alloc]
////                                                              initWithTitle:@"Error"
////                                                              message:@"Some error happened"
////                                                              delegate:self
////                                                              cancelButtonTitle:nil
////                                                              otherButtonTitles:@"Ok", nil];
////                                          
////                                          [tmp show];
////                                      }
////                                      
////                                      [self controlStatusUsable:YES];
////                                  }];
//            
//        }
//    }
//}
//
//#pragma mark - Facebook methods
//
//-(void)PostToFriendsWall
//{
//    
////}
////-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView
////{
////    if(![[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
////        [[DataManager DataManagerSharedInstance] Set_Facebook_Connection_Done];
////        [[DataManager DataManagerSharedInstance] Add_Hint_count:10];
////    }
////    [self.loginView setHidden:YES];
////    self.texlower.hidden=YES;
////    self.textupper.hidden=YES;
////    self.HintsLabel.hidden=YES;
////    
////    self.loginView=NULL;
////    NSString *myScore = [NSString stringWithFormat: @"%d", (int)self.totalScore];
////    [self setScores:myScore];
////    
////    self.fetchingScoreLabel.hidden = NO;
////   /*texlower.hidden=YES;
////    textupper.hidden=YES;
////    categories_table.alpha=1.0;
////    categories_table.hidden=NO;*/
////}
////
////-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView
////{
////    self.fetchingScoreLabel.hidden = YES;
////}
////
////-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error
////{
////    
////    NSLog(@"%@",[error localizedDescription]);
////    
////}
////
////-(void)getScores
////{
//////    689169321191401
//////    1785776531649069
////    [FBRequestConnection startWithGraphPath:@"/1785776531649069/scores"
////                                 parameters:nil
////                                 HTTPMethod:@"GET"
////                          completionHandler:
////     ^(FBRequestConnection *connection, id result, NSError *error) {
////         // Handle results
////         //NSLog(@"%@",result);
////         NSMutableDictionary* allScores = [result objectForKey:@"data"];
////         NSMutableDictionary *tempProfileInfo;
////         CustomLeaderboardStructure *individualScore ;
////         
////         for (NSDictionary<FBGraphUser>* user in allScores) {
////             
////             
////             //NSLog(@"user:%@",user);
////             
////             tempProfileInfo =[user objectForKey:@"user"];
////             
////             individualScore = [CustomLeaderboardStructure new];
////             [individualScore setProfileId:[tempProfileInfo objectForKey:@"id"]];
////             [individualScore setProfileName:[tempProfileInfo objectForKey:@"name"]];
////             [individualScore setScoresInfo:[user objectForKey:@"score"]];
////             [self.scoreDetails addObject:individualScore];
////         }
////         individualScore = [CustomLeaderboardStructure new];
////         [individualScore setProfileId:[tempProfileInfo objectForKey:@"id"]];
////         [individualScore setProfileName:[tempProfileInfo objectForKey:@"name"]];
////         [individualScore setScoresInfo:[NSNumber numberWithInteger:self.totalScore]];
////         if (![self.scoreDetails containsObject:individualScore]) {
////             
////         }
////         //[self.scoreDetails addObject:individualScore];
////         //[self.scoreDetails removeObjectAtIndex:0];
////         self.countoffriends=[self.scoreDetails count];
////         [self.categories_table reloadData];
////         [self.view bringSubviewToFront:self.categories_table];
////         
////         self.texlower.hidden=YES;
////         self.textupper.hidden=YES;
////         self.categories_table.alpha=1.0;
////         //self.categories_table.hidden=NO;
////         self.fetchingScoreLabel.hidden = YES;
////         
////     }];
////    
////}
//
//#pragma mark - Table view data source methods
//// Customize the number of sections in the table view.
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}
//
//
//// Customize the number of rows in the table view.
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    
//    //NSLog(@"count%i",[self.scoreDetails count]);
//
//    return self.countoffriends;
//    
//}
//
//
//// Customize the appearance of table view cells.
//- (UITableViewCell *)tableView:(UITableView *)tableView
//		 cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    [self.view bringSubviewToFront:self.categories_table];
//    
//    self.categories_table.backgroundColor=[UIColor clearColor];
//    NSString *CellIdentifier =@"ImageCell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    
//    UIImageView *cellImage1;
//    
//    
//    UIImageView *frame_image;
//    
//    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//        
//        
//       
//        if(bound.size.height<=568){
//        /*if([[DataManager DataManagerSharedInstance] My_Device_Type]!=3)
//        {*/
//        
//        frame_image =[[UIImageView alloc]initWithFrame:CGRectMake(35, 4,40,40)];//17, 10,52,52
//        cellImage1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0,320,48)];
//        self.indexlabel=[[UILabel alloc]initWithFrame:CGRectMake(2,6 , 20, 35)];
//        self.myImage =[[UIImageView alloc]initWithFrame:CGRectMake(35, 4,40,40)];//17, 10,52,52
//        self.scorelabel=[[UILabel alloc]initWithFrame:CGRectMake(225,6 , 80, 35)];
//            
//        self.nameLabel =[[UILabel alloc]initWithFrame:CGRectMake(95,6,125,35)];
//            
//            [self.indexlabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:16]];
//            [self.scorelabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:16]];
//            [self.nameLabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:16]];
//            
//            
//            
//        }
//        else
//        {
//            frame_image =[[UIImageView alloc]initWithFrame:CGRectMake(70, 4,70,70)];//17, 10,52,52
//            cellImage1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0,self.view.frame.size.width,78)];
//            self.indexlabel=[[UILabel alloc]initWithFrame:CGRectMake(12,22 , 20, 35)];
//            self.myImage =[[UIImageView alloc]initWithFrame:CGRectMake(70, 4,70,70)];//17, 10,52,52
//            self.scorelabel=[[UILabel alloc]initWithFrame:CGRectMake(728-250,78/2-22/2-8 , 250, 35)];
//            
//            self.nameLabel =[[UILabel alloc]initWithFrame:CGRectMake(165,6,200,55)];
//            self.nameLabel.backgroundColor=[UIColor redColor];
//            
//            
//            [self.indexlabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:22]];
//            [self.scorelabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:22]];
//            [self.nameLabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:22]];
//            
//        }
//
//        self.indexlabel.tag=666;
//        
//        
//        self.scorelabel.textAlignment=NSTextAlignmentRight;
//        self.scorelabel.textColor=[UIColor colorWithRed:(140.0/255.0f) green:(47.0/255.0f) blue:(35.0/255.0f) alpha:1.0];
//        self.scorelabel.tag=5556;
//        
//        
//        self.nameLabel.backgroundColor = [UIColor clearColor];
//        self.nameLabel.textColor=[UIColor colorWithRed:(9.0/255.0f) green:(53.0/255.0f) blue:(107/255.0f) alpha:1.0];
//        self.nameLabel.tag = 888;
//        
//        frame_image.tag=1212;
//        
//
//
//        cellImage1.tag=777;
//        [cell.contentView addSubview:cellImage1];
//        [cell.contentView addSubview:self.indexlabel];
//        [cell.contentView addSubview:self.scorelabel];
//        [cell.contentView addSubview:self.myImage];
//        [cell.contentView addSubview:frame_image];
//        [cell.contentView addSubview:self.nameLabel];
//        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
//        self.myImage.tag=999;
//       
//
//    }
//    
//    
//    else {
//        self.indexlabel = (UILabel *)[cell.contentView viewWithTag:666];
//        self.scorelabel = (UILabel *)[cell.contentView viewWithTag:5556];
//
//        self.nameLabel = (UILabel *)[cell.contentView viewWithTag:888];
//        self.myImage=(UIImageView*)[cell.contentView viewWithTag:999];
//        cellImage1=(UIImageView*)[cell.contentView viewWithTag:777];
//        self.profilePictureView = (FBProfilePictureView *)[cell.contentView viewWithTag:1111];
//        frame_image=(UIImageView*)[cell.contentView viewWithTag:1212];
//
//
//    }
//    
//    CustomLeaderboardStructure* temp =([self.scoreDetails objectAtIndex:indexPath.row]);
//    
//    if([[DataManager DataManagerSharedInstance] My_Device_Type]==3)
//    {
//        [self.nameLabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:22]];
//    }
//    else
//    {
//        [self.nameLabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:16]];
//    }
//    self.nameLabel.text=temp.profileName;
//    [self.nameLabel setAdjustsFontSizeToFitWidth:YES];
//    
//    
//    
//    if([[DataManager DataManagerSharedInstance] My_Device_Type]==3)
//    {
//        [self.scorelabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:22]];
//    }
//    else
//    {
//        [self.scorelabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:16]];
//    }
//    
//    if(temp.scoresInfo==0)
//        self.scorelabel.text = @"0";
//    else{
//        
//        NSInteger myInteger = [temp.scoresInfo integerValue];
//        
//        if(myInteger>=10000){
//            NSString *result = [fmt stringFromNumber:@(myInteger)];
//            result = [result stringByReplacingOccurrencesOfString:@" " withString:@","];
//            //NSLog(@"THIS IS THE SCORE: %@", result);
//            self.scorelabel.text = [NSString stringWithFormat:@"%@",result];
//        }
//        else{
//            //scorelabel.text = [NSString stringWithFormat:@"Score: %i",prevScore];
//            self.scorelabel.text = [temp.scoresInfo stringValue];
//        }
//        
//        
//        
//    //scorelabel.text = [temp.scoresInfo stringValue];
//    }
//    
//    [self.scorelabel setAdjustsFontSizeToFitWidth:YES];
//    
//    
//    // firstHighestPlayerScore.text=one;
//    NSString *str=[NSString stringWithFormat:@"%d",indexPath.row+1];
//
//    if([[DataManager DataManagerSharedInstance] My_Device_Type]==3)
//    {
//        [self.indexlabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:22]];
//    }
//    else
//    {
//        [self.indexlabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:16]];
//    }
//    self.indexlabel.text=str ;
//    [self.indexlabel setAdjustsFontSizeToFitWidth:YES];
//    
//    
//    _profilePictureView.profileID = temp.profileId;
//    self.profilePictureView.profileID=temp.profileId;
//    
//    if (indexPath.row%2==0) {
//        cellImage1.image=[UIImage imageNamed:@"cell_1_iphone.png"];
//        
//    }
//    else{
//        cellImage1.image=[UIImage imageNamed:@"cell_2_iphone.png"];
//        
//    }
//
//    NSString *imageUrl=[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?redirect=true", temp.profileId];
//
//    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
//    
//    self.myImage.image = [UIImage imageWithData:imageData];
//
//     self.myImage.contentMode = UIViewContentModeScaleAspectFill;
//   
//   
//
//
//    frame_image.image=[UIImage imageNamed:@"image-fream_iphone.png"];
//
//    
//    
//    return cell;
//
//}
//
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if(bound.size.height>568)
//    //if([DataManager DataManagerSharedInstance].My_Device_Type==3)
//    {
//        return 78;
//    }
//    return 48;
//}
//
//
//-(void)setScores:(NSString*)currentScore
//{
//    
//    NSMutableDictionary* params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
//                                   currentScore , @"score",
//                                   nil];
//    
//    [FBRequestConnection startWithGraphPath:@"me/scores"
//                                 parameters:params
//                                 HTTPMethod:@"POST"
//                          completionHandler:
//     ^(FBRequestConnection *connection, id result, NSError *error) {
//         // Handle results
//         [self getScores];
//     }];
//}
//
//@end