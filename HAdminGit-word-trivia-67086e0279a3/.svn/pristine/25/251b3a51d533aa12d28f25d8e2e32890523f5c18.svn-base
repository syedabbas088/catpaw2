#import <UIKit/UIKit.h>
#import "DataManager.h"
#import "PlayGridViewController.h"
#import "SettingsViewController.h"
#import "myDelegateProtocol.h"
#import "GetFreeHintsViewController.h"

@class DataManager;
@class PlayGridViewController;

@interface PacksViewController : UIViewController< myDelegateProtocol>
{
    bool firstTimeButtonsShiftUp;
    bool iphone5;
}


@property (assign, nonatomic) NSInteger caseNumber;
@property (strong, nonatomic) UIViewController   *ObjAddingView;
@property (retain,nonatomic)  UIViewController   *added_view;




@property (strong, nonatomic) IBOutlet UIView *MenuView;
@property (strong, nonatomic) IBOutlet UIView *myPacksView;
@property (strong, nonatomic) IBOutlet UIView *hintsView;

- (IBAction)clicked_MyPacks_Button:(id)sender;
- (IBAction)clicked_hints_Button:(id)sender;
- (IBAction)clicked_Close_Button:(id)sender;


@property (strong, nonatomic) IBOutlet UIImageView *TabPointOne;
@property (strong, nonatomic) IBOutlet UIImageView *TabPointTwo;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *menu_ActivityIndicator;

- (IBAction)clicked_Settings_Button:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *btn0;
@property (strong, nonatomic) IBOutlet UIButton *btn7;
@property (strong, nonatomic) IBOutlet UIButton *btn8;
@property (strong, nonatomic) IBOutlet UIButton *btn9;
@property (strong, nonatomic) IBOutlet UIButton *btn10;
@property (strong, nonatomic) IBOutlet UIButton *btn11;
@property (strong, nonatomic) IBOutlet UIButton *btn12;
@property (strong, nonatomic) IBOutlet UIButton *btn13;

@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UIButton *btn5;
@property (strong, nonatomic) IBOutlet UIButton *btn6;
@property (weak, nonatomic) IBOutlet UIButton *btn05;

@property (strong, nonatomic) IBOutlet UIButton *btn_MyPacks;
@property (strong, nonatomic) IBOutlet UIButton *btn_Hints;

@property (weak, nonatomic) IBOutlet UIButton *btn_Close;

- (IBAction)clicked_Get_Free_Hints:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *btn_Free_Hints;

@property (weak, nonatomic) IBOutlet UIButton *btn_Quick_Play_On_Hints_List;

@property (weak, nonatomic) IBOutlet UIButton *btn_Settings_On_Hints_List;
@property (weak, nonatomic) IBOutlet UIImageView *bottomBackImage_On_Hints_List;


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView_Hints;





@end
