//#import <UIKit/UIKit.h>
//#import <AVFoundation/AVFoundation.h>
//#include <AudioToolbox/AudioToolbox.h>
//
//#import "NSData+Base64.h"
//#import "DataManager.h"
//#import "Custom_View.h"
//#import "CustomButton.h"
//#import <QuartzCore/QuartzCore.h>
//#import "Packs.h"
//#import "Level.h"
//#import "Mode.h"
//#import "Word.h"
//#import "Reveal_Letters.h"
//#import "ThreeStar.h"
//#import "myDelegateProtocol.h"
//#import <Twitter/Twitter.h>
//
//
//
//@interface PlayGridViewController : UIViewController<FBLoginViewDelegate>
//{
//    bool isCurrentLevelModeOfFive;
//    bool isUserLoggedIn;
//    int timerFont;
//    int levelFont;
//    
//    int thresholdToRemoveStarFirstTime;
//    int thresholdToRemoveStarSecondTime;
//    
//    int levelID;
//    int points;
//    
//    double iphone5gridYfactor;
//    CGRect bound;
//    
//    bool forTheFirstTime;
//    
//    BOOL iphone5;
//    double YforIphone5;
//    
//    DataManager *DataManagerSharedInstance;
//    
//    int tagOfCurrentSelection;
//    
//    double gridCellWidth;
//    double gridCellHeight;
//    
//    int N;
//    
//    int totalRevealedLetters;
//    
//    bool timeToResetTimer;
//    bool timerPause;
//    bool timerHowToPlayPause;
//    
//    int choice;
//    int choicD;
//    bool isAppearingFirstTime;
//}
//@property (nonatomic, retain) AVAudioPlayer *myAudioPlayer;
//@property (nonatomic, assign) int seconds;
//@property (nonatomic, assign) int minutes;
//
//@property (nonatomic, retain) Custom_View *myView;
//@property (nonatomic, retain) UIImageView *img;
//@property (nonatomic, retain) CustomButton *button;
//@property (nonatomic, retain) Level * levelObj;
//@property (nonatomic, retain) id<myDelegateProtocol> myDelegate;
//@property (nonatomic, retain) NSString* modeDifficulty;
//@property (nonatomic, retain) NSMutableArray * words_array;
//@property (nonatomic, retain) NSMutableArray * revealedLettersArray;
//@property (nonatomic, retain) NSMutableArray *temporaryArray;
//@property (nonatomic, retain) CustomButton *temppp;
//@property (nonatomic, retain) NSMutableArray *emptyBoxes;
//@property (nonatomic, retain) NSMutableArray *filledBoxes;
//@property (nonatomic, retain) UIImageView *myImg;
//@property (nonatomic, strong) IBOutlet UILabel *secondsDisplay;
//@property (nonatomic, strong) IBOutlet UILabel *minutesDisplay;
//@property (nonatomic, strong) NSTimer *secondsTimer;
//@property (strong, nonatomic) IBOutlet UIButton *btn_facebook;
//@property (strong, nonatomic) IBOutlet UIButton *btn_twitter;
//@property (strong, nonatomic) IBOutlet UIImageView *keyboardImageView;
//@property (strong, nonatomic) IBOutlet UILabel *label_level;
//@property (strong, nonatomic) IBOutlet UILabel *label_hintCount;
//@property(nonatomic,strong)   NSMutableArray  *CustomViewsList;
//@property(nonatomic,strong)   NSMutableArray  *CustomViewsFramesList;
//@property(nonatomic,strong)   NSMutableArray  *buttonFramesList;
//@property(nonatomic,strong)   NSMutableArray  *buttonOnStartFramesList;
//@property(nonatomic,strong)   NSMutableArray  *buttonsShuffledList;
//@property(nonatomic,strong)   NSMutableArray  *allButtons;
//@property(nonatomic,strong)   NSMutableArray  *movedButtons;
//@property(nonatomic,strong)   NSMutableArray  *words;
//@property(nonatomic,strong)   NSMutableArray  *letters;
//@property(nonatomic,strong)   NSMutableDictionary * pack_dic;
//@property(nonatomic,assign)   int myCount;
//@property (strong, nonatomic) IBOutlet UIImageView *gridImageView;
//@property (weak, nonatomic)   IBOutlet UIImageView *greenStar;
//@property (weak, nonatomic)   IBOutlet UIImageView *blueStar;
//@property (weak, nonatomic)   IBOutlet UIImageView *purpleStar;
//@property (strong,nonatomic)  FBLoginView* loginView;
//
//-(void)pickNewSelection:(CustomButton *)alphabetButton;
//-(void)comparingInterlinkedRowsAndColumns: (int)linkerIndex;
//-(IBAction)alphabetClicked:(id)sender;
//- (IBAction)btnInfo:(id)sender;
//
//
//@property (weak, nonatomic) IBOutlet UIButton *button_Hint;
//
//@property (weak, nonatomic) IBOutlet UIView *hint_View_to_Rotate;
//
//
//
//@end
