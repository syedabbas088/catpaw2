//#import "SplashViewController.h"
//
//@implementation SplashViewController
//
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
//    [self Setup_Controls];
//    [self Perform_First_Time_Running_Functionality];
//}
//-(void)Setup_Controls
//{
//    [[GameCenterController instance]authenticateLocalPlayer];
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
//        
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"Default-568h@2x" ofType:@"png"];
//        self.BackgroundImage.image = [UIImage imageWithContentsOfFile:imagePath];
//    }
//    [self Update_Controls];
//}
//-(void)Update_Controls
//{
//    
//}
//- (NSString *) applicationDocumentsDirectory
//{
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
//    return basePath;
//}
//
//-(void)Perform_First_Time_Running_Functionality
//{
//    if ([[DataManager DataManagerSharedInstance] IsAppRunningFirstTime] == YES)
//    {
//        NSString * documentDirectoryPath=[self applicationDocumentsDirectory];
//        
//        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//        NSString *documentsDirectory = [paths objectAtIndex:0];
//        
//        NSString *filePath = [NSString stringWithFormat:@"%@/%@", documentsDirectory, @"PictureAndPIeces.sqlite"];
//        
//        NSString *filePathBundle = [[NSBundle mainBundle] pathForResource:@"PictureAndPIeces.sqlite" ofType:nil];
//        
//        
//        NSString *filePath1 = [NSString stringWithFormat:@"%@/%@", documentsDirectory, @"PictureAndPIeces.sqlite-shm"];
//        NSString *filePathBundle1 = [[NSBundle mainBundle] pathForResource:@"PictureAndPIeces.sqlite-shm" ofType:nil];
//        
//        
//        NSString *filePath2 = [NSString stringWithFormat:@"%@/%@", documentsDirectory, @"PictureAndPIeces.sqlite-wal"];
//        NSString *filePathBundle2 = [[NSBundle mainBundle] pathForResource:@"PictureAndPIeces.sqlite-wal" ofType:nil];
//        
//        
//        
//        
//        
//        NSFileManager *fmngr = [[NSFileManager alloc] init];
//        
//        NSError *error;
//        
//        if(![fmngr copyItemAtPath:filePathBundle toPath:filePath error:&error])
//        {
//            // handle the error
//            NSLog(@"Error creating the database: %@", [error description]);
//            
//        }
//        
//        
//        if(![fmngr copyItemAtPath:filePathBundle1 toPath:filePath1 error:&error])
//        {
//            // handle the error
//            NSLog(@"Error creating the database: %@", [error description]);
//            
//        }
//        
//        
//        if(![fmngr copyItemAtPath:filePathBundle2 toPath:filePath2 error:&error])
//        {
//            // handle the error
//            NSLog(@"Error creating the database: %@", [error description]);
//            
//        }
//        
//        
//        
//        [self parsing_success];
//    }
//    else
//    {
//        [self Load_Packs_Data];
//    }
//    
//}
//-(void)parsing_success
//{
//    [self Load_Packs_Data];
//    [[DataManager DataManagerSharedInstance] SetAppNotRunningFirstTime];
//}
//
//-(void)Load_Packs_Data
//{
//    [[DataManager DataManagerSharedInstance] LoadAllPacksData];
//    [self performSelector:@selector(Remove_Me) withObject:nil afterDelay:1.0];
//}
//-(void)Remove_Me
//{
//    AppDelegate *Delegate_ = [[UIApplication sharedApplication] delegate];
//    [Delegate_ Remove_Splash];
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
