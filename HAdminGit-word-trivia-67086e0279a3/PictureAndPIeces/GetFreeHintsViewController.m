//#import "GetFreeHintsViewController.h"
//
//@implementation GetFreeHintsViewController
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
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//
//    self.no_More_Free_Hints_Label.hidden = YES;
//    [self.view sendSubviewToBack:self.no_More_Free_Hints_Label];
//    //[self.no_More_Free_Hints_Label setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//    
//    bound = [[UIScreen mainScreen] bounds];
//    // Do any additional setup after loading the view from its nib.
//    if([[DataManager DataManagerSharedInstance] Is_Rating_Done]){
//        self.btn_Rate_Us.hidden = YES;
//    }
//    
//    if([[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
//        [self.loginView setHidden:YES];
//        self.texlower.hidden=YES;
//        self.textupper.hidden=YES;
//        self.hintslabel.hidden=YES;
//        
//        self.loginView=NULL;
//    }
//    
//    if([[DataManager DataManagerSharedInstance] Is_Rating_Done] && [[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
//        self.no_More_Free_Hints_Label.hidden = NO;
//        [self.view bringSubviewToFront:self.no_More_Free_Hints_Label];
//    }
//    
//    
//    self.loginView = [[FBLoginView alloc] init];
//    if(bound.size.height>568){
//        //self.loginView.frame = CGRectMake(bound.size.width*1/4, bound.size.height*3/4, bound.size.width/2, bound.size.height*0.77083);
//        self.loginView.frame = CGRectMake(140, 650, 480, 128);
//        scoreFont = 40;
//        labelFont = 25;
//    }
//    else if(bound.size.height==568){
//        self.loginView.frame = CGRectOffset(self.loginView.frame, 50, 380);
//        scoreFont = 20;
//        labelFont = 14;
//    }
//    else if(bound.size.height<568){
//        self.loginView.frame = CGRectOffset(self.loginView.frame, 50, 320);
//        scoreFont = 20;
//        labelFont = 14;
//    }
//    [self.no_More_Free_Hints_Label setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//    [self.textupper setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//    [self.texlower setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//    [self.hintslabel setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:labelFont]];
//    
//    self.loginView.delegate =self;
//    self.loginView.publishPermissions = @[@"publish_actions"];
//    self.loginView.defaultAudience = FBSessionDefaultAudienceFriends;
//    [self.view addSubview:self.loginView];
//}
//
//
//-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
//    
//    if(![[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
//        [[DataManager DataManagerSharedInstance] Set_Facebook_Connection_Done];
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:10];
//    }
//    [self.loginView setHidden:YES];
//    self.texlower.hidden=YES;
//    self.textupper.hidden=YES;
//    self.hintslabel.hidden=YES;
//    
//    self.loginView=NULL;
//    if([[DataManager DataManagerSharedInstance] Is_Rating_Done] && [[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
//        self.no_More_Free_Hints_Label.hidden = NO;
//        [self.view bringSubviewToFront:self.no_More_Free_Hints_Label];
//    }
//}
//
//-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView
//{
//    
//}
//
//-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error
//{
//    
//    NSLog(@"%@",[error localizedDescription]);
//    
//}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//- (IBAction)clicked_Rate_Us:(id)sender {
//    //[[DataManager DataManagerSharedInstance] ShowAppirater];
//    [[DataManager DataManagerSharedInstance] OpenRateURL];
//    [[DataManager DataManagerSharedInstance] Set_showAppirater];
//    //[[DataManager DataManagerSharedInstance] Add_Hint_count:5];
//    self.btn_Rate_Us.hidden = YES;
//    [[DataManager DataManagerSharedInstance] Set_Rating_Done];
//    
//    if([[DataManager DataManagerSharedInstance] Is_Rating_Done] && [[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
//        self.no_More_Free_Hints_Label.hidden = NO;
//        [self.view bringSubviewToFront:self.no_More_Free_Hints_Label];
//    }
//    
//}
//
//- (IBAction)clicked_Close_Button:(id)sender {
//    if([myDelegate respondsToSelector:@selector(setCaseNumber:)])
//    {
//        [myDelegate setCaseNumber:2];
//    }
//    [self.navigationController popViewControllerAnimated:YES];
//}
//@end
