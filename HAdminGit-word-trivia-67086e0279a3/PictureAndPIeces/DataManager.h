#import <Foundation/Foundation.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <StoreKit/StoreKit.h>
#import "Flurry.h"
#import "Packs.h"
#import "Level.h"
#import "Mode.h"
#import "Word.h"
#import "Reveal_Letters.h"
#import "GADInterstitial.h"
#import "CustomLeaderboardStructure.h"
#include <sys/sysctl.h>



@interface DataManager : NSObject<GADInterstitialDelegate>
{
    UIAlertView *WaitingAlert;
    BOOL IsMainMenuMusicLoaded;
    int level_id_var;
    
    int number_of_sendRequest;
    
    // NSInteger packButtonSelected;
}

@property (assign, nonatomic) NSInteger packButtonSelected;
@property  (assign , nonatomic)int hintButton;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property(nonatomic,strong) NSMutableArray *Packs_List;
@property(assign , nonatomic) int isAdLoaded;
@property(strong , nonatomic) GADInterstitial *interstitial;

- (id)init;
+ (DataManager *)DataManagerSharedInstance;
-(int)My_IOS_Version;
-(int)My_Device_Type;



-(void)load_AdMob_Ad;
-(void)stop_loading_ads;







-(void)SetCurrentLanguage;
-(NSString*)Get_My_App_Saved_Language;
-(NSString*)Get_Device_Current_Language;
-(void)PostLanguageChangeNotification;



-(int)Get_Coins;
-(void)Set_Coins:(int)coins;
-(void)Add_Coins:(int)add;


-(int)Get_Hint_count;
-(void)Set_Hint_count:(int)hint_count;
-(void)Add_Hint_count:(int)add;
-(void)Subtract_Hint_count:(int)subtract;


-(int)Get_Seconds_Option0;
-(void)Set_Seconds_Option0:(int)Seconds;
-(void)Add_Seconds_Option0:(int)add;


-(int)Get_Minutes_Option0;
-(void)Set_Minutes_Option0:(int)Minutes;
-(void)Add_Minutes_Option0:(int)add;


-(int)Get_Seconds_Option1;
-(void)Set_Seconds_Option1:(int)Seconds;
-(void)Add_Seconds_Option1:(int)add;


-(int)Get_Minutes_Option1;
-(void)Set_Minutes_Option1:(int)Minutes;
-(void)Add_Minutes_Option1:(int)add;


-(int)Get_Seconds_Option2;
-(void)Set_Seconds_Option2:(int)Seconds;
-(void)Add_Seconds_Option2:(int)add;


-(int)Get_Minutes_Option2;
-(void)Set_Minutes_Option2:(int)Minutes;
-(void)Add_Minutes_Option2:(int)add;



-(int)Get_Seconds_Option3;
-(void)Set_Seconds_Option3:(int)Seconds;
-(void)Add_Seconds_Option3:(int)add;


-(int)Get_Minutes_Option3;
-(void)Set_Minutes_Option3:(int)Minutes;
-(void)Add_Minutes_Option3:(int)add;

-(int)Get_Seconds_Option4;
-(void)Set_Seconds_Option4:(int)Seconds;
-(void)Add_Seconds_Option4:(int)add;


-(int)Get_Minutes_Option4;
-(void)Set_Minutes_Option4:(int)Minutes;
-(void)Add_Minutes_Option4:(int)add;

-(int)Get_Seconds_Option5;
-(void)Set_Seconds_Option5:(int)Seconds;
-(void)Add_Seconds_Option5:(int)add;


-(int)Get_Minutes_Option5;
-(void)Set_Minutes_Option5:(int)Minutes;
-(void)Add_Minutes_Option5:(int)add;

-(int)Get_Seconds_Option6;
-(void)Set_Seconds_Option6:(int)Seconds;
-(void)Add_Seconds_Option6:(int)add;


-(int)Get_Minutes_Option6;
-(void)Set_Minutes_Option6:(int)Minutes;
-(void)Add_Minutes_Option6:(int)add;

-(int)Get_Seconds_Option7;
-(void)Set_Seconds_Option7:(int)Seconds;
-(void)Add_Seconds_Option7:(int)add;


-(int)Get_Minutes_Option7;
-(void)Set_Minutes_Option7:(int)Minutes;
-(void)Add_Minutes_Option7:(int)add;


-(int)Get_Score;
-(void)Set_Score:(int)Score;
-(void)Add_Score:(int)add;




- (void)Show_Waiting_Alert;
- (void)Hide_Waiting_Alert;
- (void)Show_Network_Indicator;
- (void)Hide_Network_Indicator;
- (void)SetAppNotRunningFirstTime;
- (BOOL)IsAppRunningFirstTime;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;



-(void)FlurryCall:(NSString *)String;


-(void)Set_AdFree;
-(BOOL)Is_AdFree;

-(void)Set_MasterMind_Free;
-(BOOL)Is_MasterMind_Free;

-(void)Set_SuperStar_Free;
-(BOOL)Is_SuperStar_Free;

-(void)Set_Kids_Free;
-(BOOL)Is_Kids_Free;

-(void)Set_Expert_Free;
-(BOOL)Is_Expert_Free;

-(void)Set_Kingpin_Free;
-(BOOL)Is_Kingpin_Free;

-(void)Set_Legendary_Free;
-(BOOL)Is_Legendary_Free;

//-(void)Set_PinkPack_Free;
//-(BOOL)Is_PinkPack_Free;


-(void)Set_PackButtonSelected:(NSInteger)senderTag;


- (void)saveMyContext;


-(void)OpenRateURL;
-(BOOL)Is_showAppirater;
-(void)Set_showAppirater;
-(void)ShowAppirater;



-(void)SavePackData:(NSMutableDictionary*)pack_dic;


-(void)LoadAllPacksData;

-(Level*)LoadLevelWithID:(NSString*)ID;
-(BOOL)IncrementLevel:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)PackID;
-(void)SetPackDic_CurrentLevel:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)PackID;


-(NSString*)FetchCurrentModeTiles:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)Pack_ID;
-(NSString*)FetchCurrentModeDifficulty:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)Pack_ID;



-(void)Set_First_Time;
-(BOOL)Is_First_Time;

-(void)Set_Rating_Done;
-(BOOL)Is_Rating_Done;


-(void)Set_Restore_Purchases_Done;
-(BOOL)Is_Restore_Purchases_Done;



-(void)Set_Facebook_Connection_Done;
-(BOOL)Is_Facebook_Connection_Done;



- (BOOL) Is_Lower_Device;


-(BOOL)Is_No_Thanks_Not_Clicked_To_Hide_Appirater;
-(void)Set_No_Thanks_Clicked_To_Hide_Appirater;

//-(void)setScores:(NSString*)currentScore inArray:(NSMutableArray *)scoreDetails;
//-(void)getScores: (NSMutableArray *)scoreDetails;

//@property(nonatomic,strong) NSMutableArray *scoresUpdate;

-(BOOL)Is_ChartBoost_Time;

@end
