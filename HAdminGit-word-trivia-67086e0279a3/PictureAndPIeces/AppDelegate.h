#import <UIKit/UIKit.h>
#import "DataManager.h"
#import "SplashViewController.h"
//#import <RevMobAds/RevMobAds.h>
#import "Flurry.h"
#import "Appirater.h"
#import "PacksViewController.h"
//#import <Tapjoy/Tapjoy.h>
//#import "Chartboost.h"
#import <Chartboost/CBAnalytics.h>
#import <Chartboost/Chartboost.h>
#import <AdColony/AdColony.h>
#import "NativeXSDK.h"
#import "Adjust.h"
@class DataManager;
@class SplashViewController;
@class PacksViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate,AdColonyDelegate, ChartboostDelegate,NativeXSDKDelegate,NativeXAdEventDelegate>
{
    
}

@property (strong, nonatomic) UIWindow               *window;
@property (strong, nonatomic) PacksViewController       *ObjView;
@property (strong, nonatomic) UINavigationController *navigationController;

-(void)Load_Splash;
-(void)Remove_Splash;
-(void)Load_Home;

@end