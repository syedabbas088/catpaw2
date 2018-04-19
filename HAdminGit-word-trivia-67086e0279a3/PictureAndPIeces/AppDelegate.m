#import "AppDelegate.h"
#import <AdSupport/ASIdentifierManager.h> 

@implementation AppDelegate

@synthesize window = _window;
@synthesize ObjView = _ObjView;
@synthesize navigationController = _navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSString *yourAppToken = @"vw6stcde11j4";
    NSString *environment = ADJEnvironmentProduction;
    ADJConfig *adjustConfig = [ADJConfig configWithAppToken:yourAppToken environment:environment];
    [adjustConfig setLogLevel:ADJLogLevelVerbose];
    [Adjust appDidLaunch:adjustConfig];
    
    //[Tapjoy requestTapjoyConnect:@"cd928970-7dee-4603-891e-64c3c1a3c746" secretKey:@"POWDCIeomIT70Oli28r9" options:@{ TJC_OPTION_ENABLE_LOGGING : @(YES) } ];
    [NativeXSDK enableDebugLog:YES];
    // Initialize the SDK.  Notice the AppId - make sure you change this to your own from our dashboard.
    
    //[NativeXSDK initializeWithAppId:@"45725" andSDKDelegate:self];
    //[[NativeXSDK sharedInstance] createSessionWithAppId:@"45725"];
    //[NativeXSDK initializeWithAppId:@"45725"];
    
    //[[NativeXSDK sharedInstance] actionTakenWithActionID:@"1688"];
    
    
//    [self setupTapJoy];
//    [self ConfigAds];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [[DataManager DataManagerSharedInstance] SetCurrentLanguage];
    [self Load_Splash];
    [self.window makeKeyAndVisible];
//    [self Integrate_Externals];
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    
}
- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
}
- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [[DataManager DataManagerSharedInstance] PostLanguageChangeNotification];
}
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    //[[DataManager DataManagerSharedInstance] Hide_Waiting_Alert];
    
    //    Chartboost *cb = [Chartboost sharedChartboost];
    //    cb.appId = @"530f2efa2d42da3e6f4643c3";
    //    cb.appSignature = @"f2dc51dac0461ba178e02178fc6a6945dc757d9a";
    //
    //    cb.delegate = self;
    //
    //    [cb startSession];
    
}
- (void)applicationWillTerminate:(UIApplication *)application
{
    [[DataManager DataManagerSharedInstance] saveContext];
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
    [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Please Close Some Apps, Available Memory Is Low" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }


- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
//
//    // Call FBAppCall's handleOpenURL:sourceApplication to handle Facebook app responses
//    BOOL wasHandled = [FBAppCall handleOpenURL:url sourceApplication:sourceApplication];
//    
//    // You can add your app-specific url handling code here if needed
//    
    return true;

}

//#pragma mark - Tap joy methods
//-(void)setupTapJoy
//{
//    //Set up success and failure notifications
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(tjcConnectSuccess:)
//                                                 name:TJC_CONNECT_SUCCESS
//                                               object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(tjcConnectFail:)
//                                                 name:TJC_CONNECT_FAILED
//                                               object:nil];
//    //Turn on Tapjoy debug mode
//    
//    //[Tapjoy setDebugEnabled:YES]; //Do not set this for any version of the game released to an app store!
//    //The Tapjoy connect call
//    [Tapjoy connect:@"zZKJcH3uRgOJHmTDwaPHRgEBPOWDCIeomIT70Oli28r9N5iJLDEu6dsuq-Ng"];
//    
//    //If you are not using Tapjoy Managed currency, you would set your own user ID here.
//    //[Tapjoy setUserID:@"A_UNIQUE_USER_ID"];
//}
//-(void)tjcConnectSuccess:(NSNotification*)notifyObj
//{
//    NSLog(@"Tapjoy connect Succeeded");
//}
//-(void)tjcConnectFail:(NSNotification*)notifyObj
//{
//    NSLog(@"Tapjoy connect Failed");
//}
//#pragma mark - NativeX delegate methods
//
//- (void) nativeXSDKInitialized
//{
//    NSLog(@"Wahoo! Now I'm ready to show an ad.");
//    // Fetch the ad.  If you've changed the App Id, you NEED to make sure the level failed placement has been set up in your dashboard.
//    // Placement manager: https://selfservice.nativex.com/App/MonetizationManager/
//    [NativeXSDK fetchAdWithPlacement:kAdPlacementLevelFailed andFetchDelegate:self];
//}
//
//// Called if the SDK fails to initialize.
//- (void) nativeXSDKFailedToInitializeWithError:(NSError *)error
//{
//    NSLog(@"Oh no!  Something isn't setup correctly - re-read the documentation or ask customer support for some help - https://selfservice.nativex.com/Help");
//}
//
//// Called when the level failed placement is fetched
//- (void) adFetched:(NSString *)placementName
//{
//    // show the ad!
//    [NativeXSDK showAdWithPlacement:kAdPlacementLevelFailed];
//}
//#pragma mark - Custom methods
//-(void)Load_Splash
//{
//    SplashViewController *OBJ  = [[SplashViewController alloc] initWithNibName:@"SplashViewController" bundle:nil];
//    self.navigationController = [[UINavigationController alloc] initWithRootViewController:OBJ];
//    self.window.rootViewController = self.navigationController;
//    self.window.backgroundColor=[UIColor whiteColor];
//}
//-(void)ConfigAds
//{
//    [Chartboost startWithAppId:@"56949b162fdf34103263d1d1"
//                  appSignature:@"0879b886e0c204e44a7742fa0112be9b17432c7a"
//                      delegate:self];
//    //[CBAnalytics trackInAppPurchaseEvent:<#(NSData *)#> product:<#(SKProduct *)#>]
//    [AdColony configureWithAppID: @"appac0e8abd1a0f45a99d"
//                         zoneIDs: @[ @"vz38dec3f111f049a6af" ]
//                        delegate: self
//                         logging: YES];
//}
//
//-(void)Integrate_Externals
//{
//  //  [RevMobAds startSessionWithAppID:@"52a082ffa146d5415c00001d"];
// //   [RevMobAds session].testingMode = RevMobAdsTestingModeOff;
//    
//    [Flurry setCrashReportingEnabled:YES];
//    [Flurry startSession:@"D836B95D6NBHRFQX9WBM"];
//   
//    [[DataManager DataManagerSharedInstance] FlurryCall:@"Application Launched"];
//    
//    
//    /*
//    [Appirater setAppId:@"771687177"];
//    [Appirater setDaysUntilPrompt:1];
//    [Appirater setUsesUntilPrompt:10];
//    [Appirater setSignificantEventsUntilPrompt:-1];
//    [Appirater setTimeBeforeReminding:2];
//    [Appirater setDebug:YES];
//     
//     */
//
//    
//    
//}
//-(void)Remove_Splash
//{
//    self.window.rootViewController = nil;
//    [self Load_Home];
//}
//-(void)Load_Home
//{
//    self.ObjView = [[PacksViewController alloc] initWithNibName:@"PacksViewController" bundle:nil];
//    self.ObjView.caseNumber = 1;
//    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.ObjView];
//    self.window.rootViewController = self.navigationController;
//}
//

@end
