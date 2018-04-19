//#import "PacksViewController.h"
//#import <AdSupport/ASIdentifierManager.h>
//#include <ifaddrs.h>
//#include <arpa/inet.h>
//@implementation PacksViewController
//
//- (NSString *)getIPAddress {
//    
//    NSString *address = @"error";
//    struct ifaddrs *interfaces = NULL;
//    struct ifaddrs *temp_addr = NULL;
//    int success = 0;
//    // retrieve the current interfaces - returns 0 on success
//    success = getifaddrs(&interfaces);
//    if (success == 0) {
//        // Loop through linked list of interfaces
//        temp_addr = interfaces;
//        while(temp_addr != NULL) {
//            if(temp_addr->ifa_addr->sa_family == AF_INET) {
//                // Check if interface is en0 which is the wifi connection on the iPhone
//                if([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
//                    // Get NSString from C String
//                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
//                    
//                }
//                
//            }
//            
//            temp_addr = temp_addr->ifa_next;
//        }
//    }
//    // Free memory
//    freeifaddrs(interfaces);
//    return address;
//    
//}
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self)
//    {
//        
//    }
//    return self;
//}
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//
//    [[DataManager DataManagerSharedInstance] Get_Hint_count];
//    
//    firstTimeButtonsShiftUp = true;
//    
//    //[[DataManager DataManagerSharedInstance] ShowAppirater];
//    //self.scrollView_Hints.frame = CGRectMake(0, 0, 280, 360);
//    //[self.scrollView_Hints setScrollEnabled:YES];
//    
//    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
//    {
//        CGSize result = [[UIScreen mainScreen] bounds].size;
//        if(result.height == 568)
//        {
//            CGRect Frame = self.btn05.frame;
//            Frame.size.height--;
//            self.btn05.frame = Frame;
//            self.scrollView_Hints.contentSize = CGSizeMake(280, 426);
//        }
//        else{
//            CGRect Frame = self.btn05.frame;
//            Frame.size.height--;
//            self.btn05.frame = Frame;
//            self.scrollView_Hints.contentSize = CGSizeMake(280, 360);
//        }
//        
//    }
//    else if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
//    {
//        self.scrollView_Hints.contentSize = CGSizeMake(640, 744);
//    }
//    
//    
//    [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:-1];
//    
//   /* if([[DataManager DataManagerSharedInstance] Is_Rating_Done] &&
//       [[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done])
//    {
//        self.btn_Free_Hints.hidden = YES;
//        
//        if(firstTimeButtonsShiftUp)
//        {
//            int Y = self.bottomBackImage_On_Hints_List.frame.origin.y - self.btn6.frame.origin.y;
//            
//            self.bottomBackImage_On_Hints_List.frame = CGRectOffset(self.bottomBackImage_On_Hints_List.frame, 0, -Y);
//            self.btn_Quick_Play_On_Hints_List.frame = CGRectOffset(self.btn_Quick_Play_On_Hints_List.frame, 0, -Y);
//            self.btn_Settings_On_Hints_List.frame = CGRectOffset(self.btn_Settings_On_Hints_List.frame, 0, -Y);
//            
//            self.btn6.frame = self.btn05.frame;
//            self.btn05.frame = self.btn5.frame;
//            self.btn5.frame = self.btn4.frame;
//            self.btn4.frame = self.btn3.frame;
//            self.btn3.frame = self.btn2.frame;
//            self.btn2.frame = self.btn1.frame;
//            self.btn1.frame = self.btn_Free_Hints.frame;
//            
//            
//            if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
//            {
//                CGSize result = [[UIScreen mainScreen] bounds].size;
//                if(result.height == 568)
//                {
//                    self.scrollView_Hints.contentSize = CGSizeMake(280, 372);
//                }
//                else{
//                    self.scrollView_Hints.contentSize = CGSizeMake(280, 315);
//                }
//                
//            }
//            else if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
//            {
//                self.scrollView_Hints.contentSize = CGSizeMake(640, 651);
//            }
//            
//            firstTimeButtonsShiftUp = false;
//        }
//    }*/
//    
//    self.menu_ActivityIndicator.hidden = YES;
//    
//    
//    [self Setup_Controls];
//}
//-(void)Setup_Controls
//{
//    self.navigationController.navigationBarHidden = YES;
//    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)])
//    {
//        self.edgesForExtendedLayout = UIRectEdgeNone;
//        self.extendedLayoutIncludesOpaqueBars = YES;
//    }
//    if ([[DataManager DataManagerSharedInstance] My_Device_Type] == 2)
//    {
//        CGRect Frame = self.view.frame;
//        Frame.origin.x = 0;
//        Frame.origin.y = 0;
//        Frame.size.height = 568;
//        self.view.frame = Frame;
//    }
//}
//-(void)viewWillAppear:(BOOL)animated
//{
//    if([DataManager DataManagerSharedInstance].Is_Kids_Free){
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:7];
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"kid_sold@2x" ofType:@"png"];
//        UIImage * buttonImage = [UIImage imageWithContentsOfFile:imagePath];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else{
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:7];
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"kid@2x" ofType:@"png"];
//        UIImage * buttonImage = [UIImage imageWithContentsOfFile:imagePath];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    
//    
//    if([DataManager DataManagerSharedInstance].Is_Expert_Free){
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:8];
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"expert_sold@2x" ofType:@"png"];
//        UIImage * buttonImage = [UIImage imageWithContentsOfFile:imagePath];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else{
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:8];
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"expert@2x" ofType:@"png"];
//        UIImage * buttonImage = [UIImage imageWithContentsOfFile:imagePath];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    
//    
//    if([DataManager DataManagerSharedInstance].Is_SuperStar_Free){
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:9];
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"super_sold@2x" ofType:@"png"];
//        UIImage * buttonImage = [UIImage imageWithContentsOfFile:imagePath];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else{
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:9];
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"super@2x" ofType:@"png"];
//        UIImage * buttonImage = [UIImage imageWithContentsOfFile:imagePath];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    
//    
//    if([DataManager DataManagerSharedInstance].Is_MasterMind_Free){
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:10];
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"master-mind_sold@2x" ofType:@"png"];
//        UIImage * buttonImage = [UIImage imageWithContentsOfFile:imagePath];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else{
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:10];
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"master-mind@2x" ofType:@"png"];
//        UIImage * buttonImage = [UIImage imageWithContentsOfFile:imagePath];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    
//    
//    if([DataManager DataManagerSharedInstance].Is_Kingpin_Free){
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:11];
//        
//        UIImage * buttonImage = [UIImage imageNamed:@"kingpin_sold.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else{
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:11];
//        UIImage * buttonImage = [UIImage imageNamed:@"kingpin.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    
//    
//    if([DataManager DataManagerSharedInstance].Is_Legendary_Free){
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:12];
//        UIImage * buttonImage = [UIImage imageNamed:@"legendary_sold.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else{
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:12];
//        UIImage * buttonImage = [UIImage imageNamed:@"legendary.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    
//    [super viewWillAppear:animated];
//    
//   /* if([[DataManager DataManagerSharedInstance] Is_Rating_Done] && [[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
//        self.btn_Free_Hints.hidden = YES;
//        
//        if(firstTimeButtonsShiftUp){
//            
//            int Y = self.bottomBackImage_On_Hints_List.frame.origin.y - self.btn6.frame.origin.y;
//            
//            self.bottomBackImage_On_Hints_List.frame = CGRectOffset(self.bottomBackImage_On_Hints_List.frame, 0, -Y);
//            self.btn_Quick_Play_On_Hints_List.frame = CGRectOffset(self.btn_Quick_Play_On_Hints_List.frame, 0, -Y);
//            self.btn_Settings_On_Hints_List.frame = CGRectOffset(self.btn_Settings_On_Hints_List.frame, 0, -Y);
//            
//            self.btn6.frame = self.btn05.frame;
//            self.btn05.frame = self.btn5.frame;
//            self.btn5.frame = self.btn4.frame;
//            self.btn4.frame = self.btn3.frame;
//            self.btn3.frame = self.btn2.frame;
//            self.btn2.frame = self.btn1.frame;
//            self.btn1.frame = self.btn_Free_Hints.frame;
//            
//            if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
//            {
//                CGSize result = [[UIScreen mainScreen] bounds].size;
//                if(result.height == 568)
//                {
//                    self.scrollView_Hints.contentSize = CGSizeMake(280, 372);
//                }
//                else{
//                    self.scrollView_Hints.contentSize = CGSizeMake(280, 315);
//                }
//            }
//            else if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
//            {
//                self.scrollView_Hints.contentSize = CGSizeMake(640, 651);
//            }
//            
//            firstTimeButtonsShiftUp = false;
//        }
//    }*/
//    
//    
//    if(self.caseNumber == 1){
//        self.btn_Close.hidden = YES;
//        
//        self.myPacksView.hidden = NO;
//        self.hintsView.hidden = YES;
//        
//        self.TabPointOne.hidden = NO;
//        self.TabPointTwo.hidden = YES;
//    }
//    else if(self.caseNumber == 2){
//        self.btn_Close.hidden = NO;
//        
//        self.myPacksView.hidden = YES;
//        self.hintsView.hidden = NO;
//        
//        self.TabPointOne.hidden = YES;
//        self.TabPointTwo.hidden = NO;
//    }
//    
//}
//- (IBAction)clicked_MyPacks_Button:(id)sender {
//    self.myPacksView.hidden = NO;
//    self.TabPointOne.hidden = NO;
//    
//    self.hintsView.hidden = YES;
//    self.TabPointTwo.hidden = YES;
//}
//
//- (IBAction)clicked_hints_Button:(id)sender {
//    self.myPacksView.hidden = YES;
//    self.TabPointOne.hidden = YES;
//    
//    self.hintsView.hidden = NO;
//    self.TabPointTwo.hidden = NO;
//}
//
//- (IBAction)clicked_Close_Button:(id)sender {
//    //MenuView.hidden = YES;
//    NSInteger updatedBtnTag = [DataManager DataManagerSharedInstance].packButtonSelected;
//    if(updatedBtnTag != -1){
//        [self Play_This_Game_Pack:updatedBtnTag];
//    }
//}
//- (IBAction)clicked_Settings_Button:(id)sender {
//    SettingsViewController *settingsViewController = [[SettingsViewController alloc] initWithNibName:@"SettingsViewController" bundle:nil];
//    [self.navigationController pushViewController:settingsViewController animated:YES];
//}
//- (IBAction)clicked_Get_Free_Hints:(id)sender {
//   /* GetFreeHintsViewController *getFreeHintsController = [[GetFreeHintsViewController alloc] initWithNibName:@"GetFreeHintsViewController" bundle:nil];
//    getFreeHintsController.myDelegate = self;
//    [self.navigationController pushViewController:getFreeHintsController animated:YES];*/
//}
//
//- (IBAction)inAppsHint:(UIButton *)sender
//{
//    //NSString *clientIp = [self getIPAddress];
//    //[[NativeXSDK sharedInstance] actionTakenWithActionID:@"1688"];
//    
//    /*UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectZero];
//    NSString *webViewUserAgent = [webView stringByEvaluatingJavaScriptFromString:@"navigator.userAgent"];
//    NSString *idfaString = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];*/
//    
//    
//    
//    if(sender.tag == 5555){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:0];
//        [self Play_This_Game_Pack:0];
//    }
//    else if(sender.tag == 4444){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:0];
//        [self Play_This_Game_Pack:0];
//    }
//    else if(sender.tag == 7 && [DataManager DataManagerSharedInstance].Is_Kids_Free){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:sender.tag-6];
//        [self Play_This_Game_Pack:sender.tag-6];
//    }
//    else if(sender.tag == 8 && [DataManager DataManagerSharedInstance].Is_Expert_Free){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:sender.tag-6];
//        [self Play_This_Game_Pack:sender.tag-6];
//    }
//    else if(sender.tag == 9 && [DataManager DataManagerSharedInstance].Is_SuperStar_Free){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:sender.tag-6];
//        [self Play_This_Game_Pack:sender.tag-6];
//    }
//    else if(sender.tag == 10 && [DataManager DataManagerSharedInstance].Is_MasterMind_Free){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:sender.tag-6];
//        [self Play_This_Game_Pack:sender.tag-6];
//    }
//    else if(sender.tag == 11 && [DataManager DataManagerSharedInstance].Is_Kingpin_Free){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:sender.tag-6];
//        [self Play_This_Game_Pack:sender.tag-6];
//    }
//    else if(sender.tag == 12 && [DataManager DataManagerSharedInstance].Is_Legendary_Free){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:sender.tag-6];
//        [self Play_This_Game_Pack:sender.tag-6];
//    }
// /*   else if(sender.tag == 13 && [DataManager DataManagerSharedInstance].Is_PinkPack_Free){
//        [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:sender.tag-6];
//        [self Play_This_Game_Pack:sender.tag-6];
//    }*/
//    else{
//        
//        
//        self.view.userInteractionEnabled = NO;
//        [self.menu_ActivityIndicator startAnimating];
//        self.menu_ActivityIndicator.hidden = NO;
//        
//        [DataManager DataManagerSharedInstance].hintButton=sender.tag;
//        int n = sender.tag;
//        [[InAppPurchaseManager InAppPurchaseManagerSharedInstance] PurchaseProductWithNumber:sender.tag Delegate:self WithSelector:@selector(Purchased_Successfully) WithErrorSelector:@selector(Purchased_Error)];
//    }
//}
//
//
///*- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    if (alertView.tag==11111)
//    {
//        if(buttonIndex==0)
//        {
//            NSInteger updatedBtnTag = [DataManager DataManagerSharedInstance].packButtonSelected;
//            if(updatedBtnTag != -1){
//                [self Play_This_Game_Pack:updatedBtnTag];
//            }
//        }
//    }
//}*/
//
//-(void)Purchased_Successfully
//{
//    
//    if([DataManager DataManagerSharedInstance].hintButton==13 || [DataManager DataManagerSharedInstance].hintButton<6)
//    {
//        [[DataManager DataManagerSharedInstance] FlurryCall:@"Hint Purchased"];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton==6)
//    {
//        [[DataManager DataManagerSharedInstance] FlurryCall:@"Ads Removal Purchased"];
//    }
//    else
//    {
//        [[DataManager DataManagerSharedInstance] FlurryCall:@"Packs Purchased"];
//    }
//    
//    if([DataManager DataManagerSharedInstance].hintButton == 1){
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:5];
//        UIAlertView * hintsPurchased = [[UIAlertView alloc] initWithTitle:@"Hints" message:@"5 Hints Successfully Purchased" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        hintsPurchased.tag = 11111;
//        [hintsPurchased show];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 2){
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:18];
//        UIAlertView * hintsPurchased = [[UIAlertView alloc] initWithTitle:@"Hints" message:@"18 Hints Successfully Purchased" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        hintsPurchased.tag = 11111;
//        [hintsPurchased show];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 3){
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:40];
//        UIAlertView * hintsPurchased = [[UIAlertView alloc] initWithTitle:@"Hints" message:@"40 Hints Successfully Purchased" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        hintsPurchased.tag = 11111;
//        [hintsPurchased show];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 4){
////        [[DataManager DataManagerSharedInstance] Add_Hint_count:200];
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:200];
//        UIAlertView * hintsPurchased = [[UIAlertView alloc] initWithTitle:@"Hints" message:@"200 Hints Successfully Purchased" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        hintsPurchased.tag = 11111;
//        [hintsPurchased show];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 5){
////        [[DataManager DataManagerSharedInstance] Add_Hint_count:800];
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:800];
//        UIAlertView * hintsPurchased = [[UIAlertView alloc] initWithTitle:@"Hints" message:@"800 Hints Successfully Purchased" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        hintsPurchased.tag = 11111;
//        [hintsPurchased show];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 6){
//        [[DataManager DataManagerSharedInstance] Set_AdFree];
//        UIAlertView * noAdsPurchased = [[UIAlertView alloc] initWithTitle:@"No Ads" message:@"No Ads Facility Successfully Purchased" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [noAdsPurchased show];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 7){
//        [[DataManager DataManagerSharedInstance] Set_Kids_Free];
//        UIAlertView * noAdsPurchased = [[UIAlertView alloc] initWithTitle:@"Kids Pack" message:@"Kids Pack Successfully Purchased" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [noAdsPurchased show];
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:7];
//        UIImage * buttonImage = [UIImage imageNamed:@"kid_sold.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 8){
//        [[DataManager DataManagerSharedInstance] Set_Expert_Free];
//        UIAlertView * noAdsPurchased = [[UIAlertView alloc] initWithTitle:@"Expert Pack" message:@"Expert Pack Successfully Purchased" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [noAdsPurchased show];
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:8];
//        UIImage * buttonImage = [UIImage imageNamed:@"expert_sold.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 9){
//        [[DataManager DataManagerSharedInstance] Set_SuperStar_Free];
//        UIAlertView * noAdsPurchased = [[UIAlertView alloc] initWithTitle:@"Superstar Pack" message:@"Superstar Pack Successfully Purchased" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [noAdsPurchased show];
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:9];
//        UIImage * buttonImage = [UIImage imageNamed:@"super_sold.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 10){
//        [[DataManager DataManagerSharedInstance] Set_MasterMind_Free];
//        UIAlertView * noAdsPurchased = [[UIAlertView alloc] initWithTitle:@"Master Mind Pack" message:@"Master Mind Pack Successfully Purchased" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [noAdsPurchased show];
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:10];
//        UIImage * buttonImage = [UIImage imageNamed:@"master-mind_sold.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 11){
//        [[DataManager DataManagerSharedInstance] Set_Kingpin_Free];
//        UIAlertView * noAdsPurchased = [[UIAlertView alloc] initWithTitle:@"Kingpin Pack" message:@"Kingpin Pack Successfully Purchased" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [noAdsPurchased show];
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:11];
//        UIImage * buttonImage = [UIImage imageNamed:@"kingpin_sold.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 12){
//        [[DataManager DataManagerSharedInstance] Set_Legendary_Free];
//        UIAlertView * noAdsPurchased = [[UIAlertView alloc] initWithTitle:@"Legendary Pack" message:@"Legendary Pack Successfully Purchased" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [noAdsPurchased show];
//        UIButton *myButton = (UIButton *)[self.myPacksView viewWithTag:12];
//        UIImage * buttonImage = [UIImage imageNamed:@"legendary_sold.png"];
//        [myButton setImage:buttonImage forState:UIControlStateNormal];
//    }
//    else if([DataManager DataManagerSharedInstance].hintButton == 13){
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:4000];
//      //  [[DataManager DataManagerSharedInstance] Add_Hint_count:6000];
//        UIAlertView * hintsPurchased = [[UIAlertView alloc] initWithTitle:@"Hints" message:@"4000 Hints Successfully Purchased" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        hintsPurchased.tag = 11111;
//        [hintsPurchased show];
//    }
//    self.view.userInteractionEnabled = YES;
//    [self.menu_ActivityIndicator stopAnimating];
//    self.menu_ActivityIndicator.hidden = YES;
//}
//
//-(void)Purchased_Error
//{
//    UIAlertView * error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Unable to purchase product" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
//    [error show];
//    self.view.userInteractionEnabled = YES;
//    [self.menu_ActivityIndicator stopAnimating];
//    self.menu_ActivityIndicator.hidden = YES;
//}
//
//-(void)setCaseNumber:(NSInteger)caseNumber
//{
//    _caseNumber = caseNumber;
//    if(self.caseNumber == 1){
//        self.myPacksView.hidden = NO;
//        self.hintsView.hidden = YES;
//        
//        self.TabPointOne.hidden = NO;
//        self.TabPointTwo.hidden = YES;
//    }
//    else if(self.caseNumber == 2){
//        self.myPacksView.hidden = YES;
//        self.hintsView.hidden = NO;
//        
//        self.TabPointOne.hidden = YES;
//        self.TabPointTwo.hidden = NO;
//    }
//}
//-(void)Play_This_Game_Pack:(NSInteger)PlayButtonTag
//{
//    
//   // NSMutableDictionary *Pack = (NSMutableDictionary *)[[DataManager DataManagerSharedInstance].Packs_List objectAtIndex:PlayButtonTag];
//    
//    PlayGridViewController *Obj = [[PlayGridViewController alloc] initWithNibName:@"PlayGridViewController" bundle:nil];
//    //NSLog(@"%@",[DataManager DataManagerSharedInstance].Packs_List);
//    Obj.pack_dic=[[DataManager DataManagerSharedInstance].Packs_List objectAtIndex:PlayButtonTag];
//    Obj.myDelegate = self;
//    //NSLog(@"%@",Obj.pack_dic);
//    [self.navigationController pushViewController:Obj animated:YES];
//}
//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    if (alertView.tag==11111)
//    {
//        if(buttonIndex==0)
//        {
//            NSInteger updatedBtnTag = [DataManager DataManagerSharedInstance].packButtonSelected;
//            if(updatedBtnTag != -1){
//                [self Play_This_Game_Pack:updatedBtnTag];
//            }
//        }
//    }
//}
//-(void)Unload_Controls
//{
//    [NSObject cancelPreviousPerformRequestsWithTarget:self];
//}
//-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
//{
//    
//}
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    if (interfaceOrientation == UIInterfaceOrientationPortrait ||
//        interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown ||
//        interfaceOrientation == UIDeviceOrientationFaceUp ||
//        interfaceOrientation == UIDeviceOrientationFaceDown ||
//        interfaceOrientation == UIDeviceOrientationUnknown)
//    {
//        return YES;
//    }
//    else
//    {
//        return NO;
//    }
//}
//- (BOOL)shouldAutorotate
//{
//    return YES;
//}
//-(NSUInteger)supportedInterfaceOrientations
//{
//    return (UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown);
//}
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//}
//- (void)viewDidUnload
//{
//    [self Unload_Controls];
//    [super viewDidUnload];
//}
//-(void)dealloc
//{
//    [self Unload_Controls];
//}
//
//@end
