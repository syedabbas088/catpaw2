#import "DataManager.h"

@implementation DataManager

@synthesize Packs_List;

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;
/*@synthesize hintButton;
@synthesize packButtonSelected;
@synthesize isAdLoaded;*/

DataManager *DataManagerSharedInstance = nil;

- (id) init 
{
	self = [super init];
	if (self != nil)
	{
        self.Packs_List = [[NSMutableArray alloc] init];
        //scoresUpdate = [[NSMutableArray alloc] init];
        WaitingAlert = nil;
        level_id_var=0;
    }
	return self;
}
+ (DataManager *) DataManagerSharedInstance
{
	@synchronized ([DataManager class])
	{
		if (!DataManagerSharedInstance) 
		{
			DataManagerSharedInstance = [[DataManager alloc] init];
		}
		return DataManagerSharedInstance;
	}
	return nil;
}

-(int)Get_Coins
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalCoins"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:150] forKey:@"TotalCoins"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalCoins"] intValue];
}
-(void)Set_Coins:(int)coins
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:coins] forKey:@"TotalCoins"];
    [defaults synchronize];
}
-(void)Add_Coins:(int)add
{
     NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int coins=[[defaults objectForKey:@"TotalCoins"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:coins] forKey:@"TotalCoins"];
    [defaults synchronize];
}

-(void)stop_loading_ads
{
    self.interstitial.delegate=nil;
}

-(int)Get_Hint_count
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalHintCount"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:20] forKey:@"TotalHintCount"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalHintCount"] intValue];
}
-(void)Set_Hint_count:(int)hint_count
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:hint_count] forKey:@"TotalHintCount"];
    [defaults synchronize];
}
-(void)Add_Hint_count:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int hint_count=[[defaults objectForKey:@"TotalHintCount"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:hint_count] forKey:@"TotalHintCount"];
    [defaults synchronize];
}
-(void)Subtract_Hint_count:(int)subtract
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int hint_count=[[defaults objectForKey:@"TotalHintCount"] intValue]-subtract;
    [defaults setObject:[NSNumber numberWithInt:hint_count] forKey:@"TotalHintCount"];
    [defaults synchronize];
}



-(int)Get_Seconds_Option0
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalSeconds_Option0"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalSeconds_Option0"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalSeconds_Option0"] intValue];
}
-(void)Set_Seconds_Option0:(int)Seconds
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option0"];
    [defaults synchronize];
}
-(void)Add_Seconds_Option0:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Seconds=[[defaults objectForKey:@"TotalSeconds_Option0"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option0"];
    [defaults synchronize];
}



-(int)Get_Minutes_Option0
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalMinutes_Option0"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalMinutes_Option0"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalMinutes_Option0"] intValue];
}
-(void)Set_Minutes_Option0:(int)Minutes
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option0"];
    [defaults synchronize];
}
-(void)Add_Minutes_Option0:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Minutes=[[defaults objectForKey:@"TotalMinutes_Option0"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option0"];
    [defaults synchronize];
}


-(int)Get_Seconds_Option1
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalSeconds_Option1"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalSeconds_Option1"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalSeconds_Option1"] intValue];
}
-(void)Set_Seconds_Option1:(int)Seconds
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option1"];
    [defaults synchronize];
}
-(void)Add_Seconds_Option1:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Seconds=[[defaults objectForKey:@"TotalSeconds_Option1"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option1"];
    [defaults synchronize];
}



-(int)Get_Minutes_Option1
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalMinutes_Option1"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalMinutes_Option1"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalMinutes_Option1"] intValue];
}
-(void)Set_Minutes_Option1:(int)Minutes
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option1"];
    [defaults synchronize];
}
-(void)Add_Minutes_Option1:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Minutes=[[defaults objectForKey:@"TotalMinutes_Option1"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option1"];
    [defaults synchronize];
}


-(int)Get_Seconds_Option2
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalSeconds_Option2"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalSeconds_Option2"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalSeconds_Option2"] intValue];
}
-(void)Set_Seconds_Option2:(int)Seconds
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option2"];
    [defaults synchronize];
}
-(void)Add_Seconds_Option2:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Seconds=[[defaults objectForKey:@"TotalSeconds_Option2"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option2"];
    [defaults synchronize];
}



-(int)Get_Minutes_Option2
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalMinutes_Option2"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalMinutes_Option2"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalMinutes_Option2"] intValue];
}
-(void)Set_Minutes_Option2:(int)Minutes
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option2"];
    [defaults synchronize];
}
-(void)Add_Minutes_Option2:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Minutes=[[defaults objectForKey:@"TotalMinutes_Option2"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option2"];
    [defaults synchronize];
}


-(int)Get_Seconds_Option3
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalSeconds_Option3"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalSeconds_Option3"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalSeconds_Option3"] intValue];
}
-(void)Set_Seconds_Option3:(int)Seconds
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option3"];
    [defaults synchronize];
}
-(void)Add_Seconds_Option3:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Seconds=[[defaults objectForKey:@"TotalSeconds_Option3"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option3"];
    [defaults synchronize];
}



-(int)Get_Minutes_Option3
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalMinutes_Option3"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalMinutes_Option3"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalMinutes_Option3"] intValue];
}
-(void)Set_Minutes_Option3:(int)Minutes
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option3"];
    [defaults synchronize];
}
-(void)Add_Minutes_Option3:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Minutes=[[defaults objectForKey:@"TotalMinutes_Option3"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option3"];
    [defaults synchronize];
}

-(int)Get_Seconds_Option4
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalSeconds_Option4"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalSeconds_Option4"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalSeconds_Option4"] intValue];
}
-(void)Set_Seconds_Option4:(int)Seconds
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option4"];
    [defaults synchronize];
}
-(void)Add_Seconds_Option4:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Seconds=[[defaults objectForKey:@"TotalSeconds_Option4"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option4"];
    [defaults synchronize];
}



-(int)Get_Minutes_Option4
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalMinutes_Option4"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalMinutes_Option4"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalMinutes_Option4"] intValue];
}
-(void)Set_Minutes_Option4:(int)Minutes
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option4"];
    [defaults synchronize];
}
-(void)Add_Minutes_Option4:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Minutes=[[defaults objectForKey:@"TotalMinutes_Option4"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option4"];
    [defaults synchronize];
}

-(int)Get_Seconds_Option5
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalSeconds_Option5"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalSeconds_Option5"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalSeconds_Option5"] intValue];
}
-(void)Set_Seconds_Option5:(int)Seconds
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option5"];
    [defaults synchronize];
}
-(void)Add_Seconds_Option5:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Seconds=[[defaults objectForKey:@"TotalSeconds_Option5"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option5"];
    [defaults synchronize];
}



-(int)Get_Minutes_Option5
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalMinutes_Option5"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalMinutes_Option5"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalMinutes_Option5"] intValue];
}
-(void)Set_Minutes_Option5:(int)Minutes
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option5"];
    [defaults synchronize];
}
-(void)Add_Minutes_Option5:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Minutes=[[defaults objectForKey:@"TotalMinutes_Option5"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option5"];
    [defaults synchronize];
}

-(int)Get_Seconds_Option6
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalSeconds_Option6"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalSeconds_Option6"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalSeconds_Option6"] intValue];
}
-(void)Set_Seconds_Option6:(int)Seconds
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option6"];
    [defaults synchronize];
}
-(void)Add_Seconds_Option6:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Seconds=[[defaults objectForKey:@"TotalSeconds_Option6"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option6"];
    [defaults synchronize];
}
-(int)Get_Minutes_Option6
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalMinutes_Option6"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalMinutes_Option6"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalMinutes_Option6"] intValue];
}
-(void)Set_Minutes_Option6:(int)Minutes
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option6"];
    [defaults synchronize];
}
-(void)Add_Minutes_Option6:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Minutes=[[defaults objectForKey:@"TotalMinutes_Option6"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option6"];
    [defaults synchronize];
}


-(int)Get_Seconds_Option7
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalSeconds_Option7"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalSeconds_Option7"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalSeconds_Option7"] intValue];
}
-(void)Set_Seconds_Option7:(int)Seconds
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option7"];
    [defaults synchronize];
}
-(void)Add_Seconds_Option7:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Seconds=[[defaults objectForKey:@"TotalSeconds_Option7"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Seconds] forKey:@"TotalSeconds_Option7"];
    [defaults synchronize];
}



-(int)Get_Minutes_Option7
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalMinutes_Option7"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalMinutes_Option7"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalMinutes_Option7"] intValue];
}
-(void)Set_Minutes_Option7:(int)Minutes
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option7"];
    [defaults synchronize];
}
-(void)Add_Minutes_Option7:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Minutes=[[defaults objectForKey:@"TotalMinutes_Option7"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Minutes] forKey:@"TotalMinutes_Option7"];
    [defaults synchronize];
}
-(int)Get_Score
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"TotalScore"] == nil )
	{
        [defaults setObject:[NSNumber numberWithInt:0] forKey:@"TotalScore"];
        [defaults synchronize];
	}
    return [[defaults objectForKey:@"TotalScore"] intValue];
}
-(void)Set_Score:(int)Score
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:Score] forKey:@"TotalScore"];
    [defaults synchronize];
}
-(void)Add_Score:(int)add
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    int Score=[[defaults objectForKey:@"TotalScore"] intValue]+add;
    [defaults setObject:[NSNumber numberWithInt:Score] forKey:@"TotalScore"];
    [defaults synchronize];
}




-(void)Set_PackButtonSelected:(NSInteger)updatedSenderTag
{
    self.packButtonSelected = updatedSenderTag;
}







-(int)My_IOS_Version
{
    NSArray *vComp = [[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."];
    
    if ([[vComp objectAtIndex:0] intValue] >= 7)
    {
        return 7;
    }
    else if ([[vComp objectAtIndex:0] intValue] == 6)
    {
        return 6;
    }
    else if ([[vComp objectAtIndex:0] intValue] > 2)
    {
        return 5;
    }
    else
    {
        return 2;
    }
}
-(int)My_Device_Type
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"MyDeviceType" ] == nil )
	{
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
        {
            CGSize result = [[UIScreen mainScreen] bounds].size;
            if(result.height == 568)
            {
                [defaults setObject:[NSNumber numberWithInt:2] forKey:@"MyDeviceType"];
                [defaults synchronize];
                return 2;
            }
            else
            {
                [defaults setObject:[NSNumber numberWithInt:1] forKey:@"MyDeviceType"];
                [defaults synchronize];
                return 1;
            }
        }
        else
        {
            [defaults setObject:[NSNumber numberWithInt:3] forKey:@"MyDeviceType"];
            [defaults synchronize];
            return 3;
        }
	}
    else
    {
        NSNumber *Device_Type = (NSNumber *)[defaults objectForKey:@"MyDeviceType"];
        return [Device_Type intValue];
    }
    return 1;
}
- (void)Show_Waiting_Alert
{
    if (WaitingAlert == nil)
    {
        WaitingAlert = [[UIAlertView alloc] initWithTitle:@"Please Wait..."
                    message:@""
                    delegate:nil cancelButtonTitle:nil otherButtonTitles:nil, nil];
        UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        indicator.center = CGPointMake(WaitingAlert.bounds.size.width / 2 + 135, WaitingAlert.bounds.size.height + 75);
        [indicator startAnimating];
        [WaitingAlert addSubview:indicator];
    }
    [WaitingAlert show];
}
- (void)Hide_Waiting_Alert
{
    [WaitingAlert dismissWithClickedButtonIndex:0 animated:YES];
    WaitingAlert = nil;
}
- (void)Show_Network_Indicator
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}
- (void)Hide_Network_Indicator
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}
/*********************************  Settings Manager Area *************************/
-(void)SetAppNotRunningFirstTime 
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"R" forKey:@"IsAppRunningFirstTime"];
	[defaults synchronize];
}
-(BOOL)IsAppRunningFirstTime
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsAppRunningFirstTime" ] == nil )
	{
        return YES;
	}		
    return NO;
}

/*********************************  Core Data Manager Area *************************/

/*
 
 fetching code
 
 
 
 NSError *error = nil;
 NSManagedObjectContext *context = [self managedObjectContext];
 NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
 NSEntityDescription *entity = [NSEntityDescription entityForName:@"Levels" inManagedObjectContext:context];
 [fetchRequest setEntity:entity];
 NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(iD == %@)",Level_Id];
 [fetchRequest setPredicate:predicate];
 NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
 
 
 if ([fetchedObjects count] > 0)
 {
 for (Levels *obj in fetchedObjects)
 {
 return obj;
 }
 }
 return nil;
 
 
 
 
 */




/*********************************  Core Data Backend Controller *************************/
- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error])
        {
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}





- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
        [_managedObjectContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    }
    return _managedObjectContext;
}
- (NSManagedObjectModel *)managedObjectModel
{
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"PictureAndPIeces" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"PictureAndPIeces.sqlite"];
    
    NSError *error = nil;
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
         
         Typical reasons for an error here include:
         * The persistent store is not accessible;
         * The schema for the persistent store is incompatible with current managed object model.
         Check the error message to determine what the actual problem was.
         
         
         If the persistent store is not accessible, there is typically something wrong with the file path. Often, a file URL is pointing into the application's resources directory instead of a writeable directory.
         
         If you encounter schema incompatibility errors during development, you can reduce their frequency by:
         * Simply deleting the existing store:
         [[NSFileManager defaultManager] removeItemAtURL:storeURL error:nil]
         
         * Performing automatic lightweight migration by passing the following dictionary as the options parameter:
         @{NSMigratePersistentStoresAutomaticallyOption:@YES, NSInferMappingModelAutomaticallyOption:@YES}
         
         Lightweight migration will only work for a limited set of schema changes; consult "Core Data Model Versioning and Data Migration Programming Guide" for details.
         
         */
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}

- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (void)saveMyContext
{
    
    
    NSManagedObjectContext *context = [self managedObjectContext];
    NSError *error = Nil;
    BOOL Saving_Status = NO;
    if(context)
    {
    while (Saving_Status == NO)
    {
         
        if (![context save:&error])
        {
            NSLog(@"Couldn't Save Because :: %@", [error localizedDescription]);
        }
        else
        {
            Saving_Status = YES;
        }
    }
    }
}

-(void)saveMyContextWithContext:(NSManagedObjectContext*)context
{
    NSError *error = nil;
    BOOL Saving_Status = NO;
    while (Saving_Status == NO)
    {
        if (![context save:&error])
        {
            NSLog(@"Couldn't Save Because :: %@", [error localizedDescription]);
        }
        else
        {
            Saving_Status = YES;
        }
    }
}

-(void)LoadAllPacksData
{
     self.Packs_List=[[NSMutableArray alloc] init];
    
    NSError *error = nil;
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Packs" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
   // NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(iD == %@)",Level_Id];
   // [fetchRequest setPredicate:predicate];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    if ([fetchedObjects count] > 0)
    {
        for (int i=0;i<[fetchedObjects count];i++)
        {
            Packs *pack_obj=[fetchedObjects objectAtIndex:i];
            NSMutableDictionary * pack_dic=[[NSMutableDictionary alloc] init];
            [pack_dic setObject:pack_obj.iD forKey:@"iD"];
            [pack_dic setObject:pack_obj.current_level forKey:@"current_level"];
            [pack_dic setObject:pack_obj.current_level_id forKey:@"current_level_id"];
            [pack_dic setObject:pack_obj.isLocked forKey:@"isLocked"];
            [pack_dic setObject:pack_obj.total_levels forKey:@"total_levels"];
            [pack_dic setObject:pack_obj.name forKey:@"name"];
            [pack_dic setObject:pack_obj.current_mode_id forKey:@"current_mode_id"];
            [ self.Packs_List addObject:pack_dic];
        }
    }
    
}



-(Level*)LoadLevelWithID:(NSString*)ID
{
    //NSLog(@"aya");
    NSError *error = nil;
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Level" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
     NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(iD == %@)",ID];
     [fetchRequest setPredicate:predicate];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    if ([fetchedObjects count] > 0)
    {
        for(Level* obj in fetchedObjects)
        {
            /* comment it */
            NSArray *myArray = [obj.revealed_letters_list allObjects];
            return obj;
        }
    }
    return nil;
}



-(NSString*)FetchCurrentModeTiles:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)Pack_ID
{
    NSString *tilesOfCurrentMode = @"";
    NSError *error = nil;
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Packs" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(iD == %@)",Pack_ID];
    [fetchRequest setPredicate:predicate];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    
    if ([fetchedObjects count] > 0)
    {
        for(Packs* packobj in fetchedObjects)
        {
            Mode * mode=[self FetchModeForPack:packobj WithID:packobj.current_mode_id];
            tilesOfCurrentMode = mode.tiles;
            return tilesOfCurrentMode;
        }
    }
    return tilesOfCurrentMode;
}

-(NSString*)FetchCurrentModeDifficulty:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)Pack_ID
{
    NSString *difficultyOfCurrentMode = @"";
    NSError *error = nil;
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Packs" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(iD == %@)",Pack_ID];
    [fetchRequest setPredicate:predicate];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    
    if ([fetchedObjects count] > 0)
    {
        for(Packs* packobj in fetchedObjects)
        {
            Mode * mode=[self FetchModeForPack:packobj WithID:packobj.current_mode_id];
            difficultyOfCurrentMode = mode.difficulty;
            return difficultyOfCurrentMode;
        }
    }
    return difficultyOfCurrentMode;
}




-(BOOL)IncrementLevel:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)Pack_ID
{
    
    
    //NSLog(@"Pack_ID ::%@",Pack_ID);
    
    NSError *error = nil;
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Packs" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(iD == %@)",Pack_ID];
    [fetchRequest setPredicate:predicate];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    
    if ([fetchedObjects count] > 0)
    {
        for(Packs* packobj in fetchedObjects)
        {
            int current_mode_id=[packobj.current_mode_id intValue];
            Mode * mode=[self FetchModeForPack:packobj WithID:packobj.current_mode_id];
            //NSLog(@"mode:%@",mode);
            //NSLog(@"levels List count:%lu",(unsigned long)[mode.levels_list count]);
            
            //NSLog(@"packObj:%@",packobj);
            if([mode.isComplete isEqualToString:@"NO"])
            {
                if([mode.name isEqualToString:@"Fixed"])
                {
                    Level * prev_level=[self LoadLevelWithID:packobj.current_level_id];
                    prev_level.isCompleted=@"YES";
                    int LevelsCompleted=[mode.levels_completed intValue];
                    LevelsCompleted++;
                    mode.levels_completed= [[NSString alloc] initWithFormat:@"%i",LevelsCompleted];
                    NSString * NewLevelID=[self FetchLevelID_ForFixedMode:mode];
                    packobj.current_level_id=NewLevelID;
                    packobj.current_level=[[NSString alloc] initWithFormat:@"%i",[packobj.current_level intValue]+1];
                    [self saveMyContext];
                    
                    
                    
                    
                    
                   if([mode.levels_completed intValue]<[mode.levels_list count])
                   {
                       return YES;
                   }
                   else
                   {
                      mode.isComplete=@"YES";
                      if(current_mode_id<[packobj.modes_list count])
                      {
                          current_mode_id++;
                          packobj.current_mode_id=[[NSString alloc] initWithFormat:@"%i",current_mode_id];
                          
                          //int current_mode_id=[packobj.current_mode_id intValue];
                          Mode * mode=[self FetchModeForPack:packobj WithID:packobj.current_mode_id];
                          
                          NSString * NewLevelID=[self FetchLevelID_ForFixedMode:mode];
                          packobj.current_level_id=NewLevelID;
                          //NSLog(@"mode:%@",mode);
                          //NSLog(@"levels List count:%lu",(unsigned long)[mode.levels_list count]);
                          
                          [self SetPackDic_CurrentMode:Pack_Dic ForPackID:Pack_ID];
                          
                          //NSLog(@"packObj:%@",packobj);
                          
                          
                          [self saveMyContext];
                          return true;//[self IncrementLevel_ForPackID:Pack_ID];
                      }
                      else
                      {
                          return false;
                      }
                       
                       
                   }
                }
                else
                {
                    if([mode.levels_completed intValue]<[mode.levels_list count])
                    {
                        
                    }
                    else
                    {
                        mode.isComplete=@"YES";
                        if(current_mode_id<[packobj.modes_list count])
                        {
                            current_mode_id++;
                            packobj.current_mode_id=[[NSString alloc] initWithFormat:@"%i",current_mode_id];
                            return [self IncrementLevel:Pack_Dic ForPackID:Pack_ID];
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }
            else
            {
                
            }
        }
    }
    return false;
}

-(void)SetPackDic_CurrentMode:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)PackID
{
    
    //NSLog(@"%@",Pack_Dic);
    
    NSError *error = nil;
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Packs" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(iD == %@)",PackID];
    [fetchRequest setPredicate:predicate];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    for(Packs * packObj in fetchedObjects)
    {
        [Pack_Dic setObject:packObj.current_mode_id forKey:@"current_mode_id"];
    }
    
    
}


-(void)SetPackDic_CurrentLevel:(NSMutableDictionary *)Pack_Dic ForPackID:(NSString*)PackID
{
    
    //NSLog(@"%@",Pack_Dic);
    
    NSError *error = nil;
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Packs" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(iD == %@)",PackID];
    [fetchRequest setPredicate:predicate];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    for(Packs * packObj in fetchedObjects)
    {
        [Pack_Dic setObject:packObj.current_level_id forKey:@"current_level_id"];
        [Pack_Dic setObject:packObj.current_level forKey:@"current_level"];
        //[Pack_Dic setObject:packObj.current_mode_id forKey:@"current_mode_id"];
    }
    
    
}

-(void)FlurryCall:(NSString *)String
{
    [Flurry logEvent:String];
}


-(Mode *)FetchModeForPack:(Packs*)packObj WithID:(NSString*)Mode_ID
{
    for(Mode * modeObj in packObj.modes_list)
    {
        if([modeObj.iD isEqualToString:Mode_ID])
        {
            return modeObj;
        }
    }
    return nil;
}


-(NSString *)FetchLevelID_ForFixedMode:(Mode*)modeObj
{
    NSMutableArray * ids_array=[[NSMutableArray alloc] init];
    for(Level * LevelObj in modeObj.levels_list)
    {
        if([LevelObj.isCompleted isEqualToString:@"NO"])
        {
            [ids_array addObject:LevelObj.iD];
        }
    }
    //[self SortArray:ids_array];
    if([ids_array count]>0)
    {
        return [ids_array objectAtIndex:0];
    }
    return @"-1";
}


-(void)SortArray:(NSMutableArray *)arr
{
    //NSLog(@"arr:%lu",(unsigned long)[arr count]-1);
    for(int i=0;i<arr.count-1;i++)
    {
        //int min=[word.iD intValue];
        for(int j=i+1;j<arr.count;j++)
        {
            NSString* w1=[arr objectAtIndex:i];
            NSString* w2=[arr objectAtIndex:j];
            if([w2 intValue] < [w1 intValue])
            {
                [arr exchangeObjectAtIndex:i withObjectAtIndex:(j)];
            }
        }
    }
}


-(void)SavePackData:(NSMutableDictionary *)pack_dic
{
    NSManagedObjectContext * context=[self managedObjectContext];
    Packs *Packobj = [NSEntityDescription
                      insertNewObjectForEntityForName:@"Packs"
                      inManagedObjectContext:context];
    Packobj.iD=[pack_dic objectForKey:@"iD"];
    Packobj.name=[pack_dic objectForKey:@"name"];
    Packobj.isLocked=[pack_dic objectForKey:@"isLocked"];
    Packobj.current_level_id=[[NSString alloc] initWithFormat:@"%i",level_id_var+1];
    
    NSMutableArray * modes_list=[pack_dic objectForKey:@"modes_list"];
    
    int total_levels=0;
    if(modes_list.count>0)
    {
        Packobj.current_mode_id=@"1";
    }
    else
    {
        Packobj.current_mode_id=@"-1";
    }
    
   
    
    
    for(int i=0;i<[modes_list count];i++)
    {
        Mode *Modeobj = [NSEntityDescription
                      insertNewObjectForEntityForName:@"Mode"
                      inManagedObjectContext:context];
        NSMutableDictionary * mode_dic=[modes_list objectAtIndex:i];
        Modeobj.name=[mode_dic objectForKey:@"name"];
        Modeobj.tiles=[mode_dic objectForKey:@"tiles"];
        Modeobj.difficulty=[mode_dic objectForKey:@"difficulty"];
        Modeobj.isComplete=@"NO";
        Modeobj.iD=[[NSString alloc] initWithFormat:@"%i",i+1];
        NSMutableArray * levels_list=[mode_dic objectForKey:@"levels_list"];
        Modeobj.levels_completed=@"0";
        for(int j=0;j<[levels_list count];j++)
        {
            total_levels++;
            Level *Levelobj = [NSEntityDescription
                             insertNewObjectForEntityForName:@"Level"
                             inManagedObjectContext:context];
            level_id_var++;
            Levelobj.iD=[[NSString alloc] initWithFormat:@"%i",level_id_var];
            Levelobj.isCompleted=@"NO";
            
            NSMutableDictionary * level_dic=[levels_list objectAtIndex:j];
            NSMutableArray * words_list=[level_dic objectForKey:@"words_list"];
            NSMutableArray * reveal_letters_list=[level_dic objectForKey:@"reveal_letters_list"];
            
            
            int words_length=[words_list count];
            
            
            
            
            for(int k=0;k<[words_list count];k++)
            {
                Word *Wordobj = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Word"
                                   inManagedObjectContext:context];
                NSMutableDictionary * word_dic=[words_list objectAtIndex:k];
                Wordobj.iD=[[NSString alloc] initWithFormat:@"%i",k+1];
                
                Wordobj.name=[word_dic objectForKey:@"name"];
                Wordobj.isGuessed=@"NO";
                
                
                
                [Levelobj addWords_listObject:Wordobj];
            }
            for(int l=0;l<[reveal_letters_list count];l++)
            {
                    int value=[[reveal_letters_list objectAtIndex:l] intValue];
                    Reveal_Letters *Letterobj = [NSEntityDescription
                                                 insertNewObjectForEntityForName:@"Reveal_Letters"
                                                 inManagedObjectContext:context];
                    Letterobj.index=[[NSString alloc]initWithFormat:@"%i",value];
                    Letterobj.isLocked=@"YES";
                    Letterobj.type=@"-2";
                    [Levelobj addRevealed_letters_listObject:Letterobj];
            }
            
            
            [Modeobj addLevels_listObject:Levelobj];
        }
        [Packobj addModes_listObject:Modeobj];
    }
    Packobj.total_levels=[[NSString alloc] initWithFormat:@"%i",total_levels];
    Packobj.current_level=@"1";
    
    [self saveMyContextWithContext:context];
}

-(void)dealloc
{
    
}

-(void)Set_AdFree
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsAdFree"];
	[defaults synchronize];
}
-(BOOL)Is_AdFree
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsAdFree" ] == nil )
	{
        return NO;
	}
    return YES;
}

-(void)Set_MasterMind_Free
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsMasterMindFree"];
	[defaults synchronize];
}
-(BOOL)Is_MasterMind_Free
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsMasterMindFree" ] == nil )
	{
        return NO;
	}
    return YES;
}

-(void)Set_SuperStar_Free
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsSuperStarFree"];
	[defaults synchronize];
}
-(BOOL)Is_SuperStar_Free
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsSuperStarFree" ] == nil )
	{
        return NO;
	}
    return YES;
}

-(void)Set_Kids_Free
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsKidsFree"];
	[defaults synchronize];
}
-(BOOL)Is_Kids_Free
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsKidsFree" ] == nil )
	{
        return NO;
	}
    return YES;
}

-(void)Set_Expert_Free
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsExpertFree"];
	[defaults synchronize];
}
-(BOOL)Is_Expert_Free
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsExpertFree" ] == nil )
	{
        return NO;
	}
    return YES;
}

-(void)Set_Kingpin_Free
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsKingpinFree"];
	[defaults synchronize];
}
-(BOOL)Is_Kingpin_Free
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsKingpinFree" ] == nil )
	{
        return NO;
	}
    return YES;
}

-(void)Set_Legendary_Free
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsLegendaryFree"];
	[defaults synchronize];
}
-(BOOL)Is_Legendary_Free
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsLegendaryFree" ] == nil )
	{
        return NO;
	}
    return YES;
}

-(void)Set_First_Time
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"NO" forKey:@"IsFirstTime"];
	[defaults synchronize];
}
-(BOOL)Is_First_Time
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsFirstTime" ] == nil )
	{
        return YES;
	}
    return NO;
}

-(void)Set_Rating_Done
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsRatingDone"];
	[defaults synchronize];
}
-(BOOL)Is_Rating_Done
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsRatingDone" ] == nil )
	{
        return NO;
	}
    return YES;
}


-(void)Set_Restore_Purchases_Done
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsRestorePurchasesDone"];
	[defaults synchronize];
}
-(BOOL)Is_Restore_Purchases_Done
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsRestorePurchasesDone" ] == nil )
	{
        return NO;
	}
    return YES;
}



-(void)Set_Facebook_Connection_Done
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsFacebookConnectionDone"];
	[defaults synchronize];
}
-(BOOL)Is_Facebook_Connection_Done
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsFacebookConnectionDone" ] == nil )
	{
        return NO;
	}
    return YES;
}


/*-(void)Set_PinkPack_Free
{
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	[defaults setObject:@"YES" forKey:@"IsPinkPackFree"];
	[defaults synchronize];
}
-(BOOL)Is_PinkPack_Free
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"IsPinkPackFree" ] == nil )
	{
        return NO;
	}
    return YES;
}*/



-(void)SetCurrentLanguage
{
    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:language forKey:@"langu"];
    [defaults synchronize];
}
-(NSString*)Get_My_App_Saved_Language
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
	if ([defaults objectForKey:@"langu" ] == nil )
    {
        return @"";
    }
    else
    {
        return [defaults objectForKey:@"langu"];
    }
}
-(NSString*)Get_Device_Current_Language
{
    NSString * language = [[NSString alloc] initWithFormat:@"%@",[[NSLocale preferredLanguages] objectAtIndex:0]];
    return language;
}
-(void)PostLanguageChangeNotification
{
     NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
    if (![language isEqualToString:[[DataManager DataManagerSharedInstance] Get_My_App_Saved_Language]])
    {
        [self SetCurrentLanguage];
        [[NSNotificationCenter defaultCenter]
         postNotificationName:@"LanguageChange"
         object:self];
    }
}
-(void)ShowAppirater
{
    
    
    
    
    //if([self Is_showAppirater])
    {
       /* NSString*str1=[[NSString alloc] initWithFormat:@"%@ Words Maker",NSLocalizedString(@"Item 85", @"")];
        NSString*str2=NSLocalizedString(@"Item 86", @"");
        NSString*str3=NSLocalizedString(@"Item 88", @"");
        NSString*str4=NSLocalizedString(@"Item 87", @"");
        
        
        
        
        NSMutableString * new_str2=[[NSMutableString alloc] initWithString:str2];
        [new_str2 replaceOccurrencesOfString:@"@" withString:@"Words Maker" options:1 range:NSMakeRange(0, [new_str2 length])];
        
        UIAlertView * alertView=[[UIAlertView alloc] initWithTitle:str1 message:new_str2 delegate:self cancelButtonTitle:str4 otherButtonTitles:str1,str3, nil];
        alertView.tag=1215;
        [alertView show];*/
        
        
        
        NSString*str1=[[NSString alloc] initWithFormat:@"Like Word Trivia?"];
        NSString*new_str2=[[NSString alloc] initWithFormat:@"Please Rate us if you are enjoying the game. Thank you very much for your support."];
        NSString*str3=NSLocalizedString(@"Item 88", @"");
        NSString*str4=NSLocalizedString(@"Item 87", @"");
        
        
        UIAlertView * alertView=[[UIAlertView alloc] initWithTitle:str1 message:new_str2 delegate:self cancelButtonTitle:str4 otherButtonTitles:@"Rate us NOW",str3, nil];
        alertView.tag=1215;
        [alertView show];
        
        
        
    }
    
}

-(BOOL)Is_showAppirater
{
    BOOL ShouldShow = NO;
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"ShowAppirater"] == nil )
    {
        ShouldShow = YES;
    }
    return ShouldShow;
}

-(void)Set_showAppirater
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"YES" forKey:@"ShowAppirater"];
    [defaults synchronize];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(alertView.tag==1215)
    {
        if(buttonIndex==0)
        {
            //[self Set_showAppirater];
            [[DataManager DataManagerSharedInstance] Set_No_Thanks_Clicked_To_Hide_Appirater];
            
        }
        else if(buttonIndex==1)
        {
            [self OpenRateURL];
            [self Set_showAppirater];
            //[[DataManager DataManagerSharedInstance] Add_Hint_count:5];
            [[DataManager DataManagerSharedInstance] Set_Rating_Done];
        }
        else if(buttonIndex==2)
        {
            //[[DataManager DataManagerSharedInstance] Set_No_Thanks_Clicked_To_Hide_Appirater];
        }
    }
    
}



-(BOOL)Is_No_Thanks_Not_Clicked_To_Hide_Appirater
{
    BOOL ShouldShow = NO;
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"NoThanksClickedToHideAppirater"] == nil )
    {
        ShouldShow = YES;
    }
    return ShouldShow;
}

-(void)Set_No_Thanks_Clicked_To_Hide_Appirater
{
    NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"YES" forKey:@"NoThanksClickedToHideAppirater"];
    [defaults synchronize];
}


-(void)load_AdMob_Ad
{
    self.isAdLoaded=0;
    number_of_sendRequest=0;
    
    self.interstitial = [[GADInterstitial alloc] init];
    self.interstitial.delegate=self;
    
    if(UI_USER_INTERFACE_IDIOM()== UIUserInterfaceIdiomPhone)
    {
        self.interstitial.adUnitID = @"a153033e203b88a";
    }
    else{
        self.interstitial.adUnitID = @"a153033e83657ab";
    }
    [GADRequest request].testDevices=@[ @"195d9ebb46ed02ff7a41ae8b97108e5e" ];
    [self.interstitial loadRequest:[GADRequest request]];
    

    
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)interstitial
{
    //[interstitial_ presentFromRootViewController:self];
    //NSLog(@"ad loaded successfully");
    self.isAdLoaded=1;
    self.interstitial = interstitial;
}

-(void)interstitial:(GADInterstitial *)interstitial
didFailToReceiveAdWithError:(GADRequestError *)error
{
    self.isAdLoaded=0;
    number_of_sendRequest++;
    
    if(number_of_sendRequest<=2)
    {
        //NSLog(@"error :: %@  :: loading ads again!!!",error);
        [self.interstitial loadRequest:[GADRequest request]];
    }
    else{
        
            double delayInSeconds = 10;
            dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
            dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
                //NSLog(@"Retrying to load request");
                [self.interstitial loadRequest:[GADRequest request]];
            });

    }
   
    
//    double delayInSeconds = 0.5;
//    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//        NSLog(@"Retrying to load request");
//        [interstitial loadRequest:[GADRequest request]];
//    });
    
}

-(void)OpenRateURL
{
    
    /*
    NSString *ReviewURL;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        //
        ReviewURL = @"itms-apps://itunes.apple.com/app/id813487876";
        //ReviewURL = @"itms-apps://itunes.apple.com/app/id674921432";
    }
    else
    {
//        https://itunes.apple.com/us/app/words-maker-new-word-search/id813487876?ls=1&mt=8
//        ReviewURL = @"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=771687177";
        ReviewURL = @"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=813487876";
    }
    
    
    
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:ReviewURL]];
     */
    
    //https://itunes.apple.com/us/app/words-maker-new-word-search/id813487876?ls=1&mt=8
    
    //NSString * url = @"https://itunes.apple.com/us/app/4-pics-1-celebrity/id674921432?ls=1&mt=8";
    
    NSString * url = @"https://itunes.apple.com/us/app/words-maker-new-word-search/id813487876?ls=1&mt=8";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];

}




- (NSString *) platform{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithUTF8String:machine];
    free(machine);
    return platform;
}
- (BOOL) Is_Lower_Device{
    NSString *platform = [self platform];
    if ([platform isEqualToString:@"iPhone1,1"])    return YES;
    if ([platform isEqualToString:@"iPhone1,2"])    return YES;
    if ([platform isEqualToString:@"iPhone2,1"])    return YES;
    if ([platform isEqualToString:@"iPhone3,1"])    return NO;
    if ([platform isEqualToString:@"iPhone3,3"])    return NO;
    if ([platform isEqualToString:@"iPhone4,1"])    return NO;
    if ([platform isEqualToString:@"iPhone5,1"])    return NO;
    if ([platform isEqualToString:@"iPhone5,2"])    return NO;
    if ([platform isEqualToString:@"iPhone5,3"])    return NO;
    if ([platform isEqualToString:@"iPhone5,4"])    return NO;
    if ([platform isEqualToString:@"iPhone6,1"])    return NO;
    if ([platform isEqualToString:@"iPhone6,2"])    return NO;
    if ([platform isEqualToString:@"iPod1,1"])      return YES;
    if ([platform isEqualToString:@"iPod2,1"])      return YES;
    if ([platform isEqualToString:@"iPod3,1"])      return YES;
    if ([platform isEqualToString:@"iPod4,1"])      return YES;
    if ([platform isEqualToString:@"iPod5,1"])      return NO;
    if ([platform isEqualToString:@"iPad1,1"])      return NO;
    if ([platform isEqualToString:@"iPad2,1"])      return NO;
    if ([platform isEqualToString:@"iPad2,2"])      return NO;
    if ([platform isEqualToString:@"iPad2,3"])      return NO;
    if ([platform isEqualToString:@"iPad2,4"])      return NO;
    if ([platform isEqualToString:@"iPad2,5"])      return NO;
    if ([platform isEqualToString:@"iPad2,6"])      return NO;
    if ([platform isEqualToString:@"iPad2,7"])      return NO;
    if ([platform isEqualToString:@"iPad3,1"])      return NO;
    if ([platform isEqualToString:@"iPad3,2"])      return NO;
    if ([platform isEqualToString:@"iPad3,3"])      return NO;
    if ([platform isEqualToString:@"iPad3,4"])      return NO;
    if ([platform isEqualToString:@"iPad3,5"])      return NO;
    if ([platform isEqualToString:@"iPad3,6"])      return NO;
    if ([platform isEqualToString:@"iPad4,1"])      return NO;
    if ([platform isEqualToString:@"iPad4,2"])      return NO;
    if ([platform isEqualToString:@"iPad4,4"])      return NO;
    if ([platform isEqualToString:@"iPad4,5"])      return NO;
    if ([platform isEqualToString:@"i386"])         return NO;
    if ([platform isEqualToString:@"x86_64"])       return NO;
    return NO;
}



/*-(void)setScores:(NSString*)currentScore inArray:(NSMutableArray *)scoreDetails
{
    
    NSMutableDictionary* params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   currentScore , @"score",
                                   nil];
    
    [FBRequestConnection startWithGraphPath:@"me/scores"
                                 parameters:params
                                 HTTPMethod:@"POST"
                          completionHandler:
     ^(FBRequestConnection *connection, id result, NSError *error) {
         // Handle results
         [self getScores: scoreDetails];
     }];
    
    
}


-(void)getScores: (NSMutableArray *)scoreDetails{
    
    
    [FBRequestConnection startWithGraphPath:@"/220591594796870/scores"
                                 parameters:nil
                                 HTTPMethod:@"GET"
                          completionHandler:
     ^(FBRequestConnection *connection, id result, NSError *error) {
         // Handle results
         NSLog(@"%@",result);
         NSMutableDictionary* allScores = [result objectForKey:@"data"];
         NSMutableDictionary *tempProfileInfo;
         CustomLeaderboardStructure *individualScore ;
         
         for (NSDictionary<FBGraphUser>* user in allScores) {
             
             
             NSLog(@"user:%@",user);
             
             tempProfileInfo =[user objectForKey:@"user"];
             
             individualScore = [CustomLeaderboardStructure new];
             [individualScore setProfileId:[tempProfileInfo objectForKey:@"id"]];
             [individualScore setProfileName:[tempProfileInfo objectForKey:@"name"]];
             [individualScore setScoresInfo:[user objectForKey:@"score"]];
             [scoreDetails addObject:individualScore];
         }
         
         scoresUpdate = scoreDetails;
         
         
     }];
    
}*/


-(BOOL)Is_ChartBoost_Time
{
    
	NSUserDefaults * defaults= [NSUserDefaults standardUserDefaults];
    
    
	if ([defaults objectForKey:@"IsChartBoostTime" ] == nil )
	{
        [defaults setObject:@"YES" forKey:@"IsChartBoostTime"];
        [defaults synchronize];
        return NO;
	}
    else if ([[defaults objectForKey:@"IsChartBoostTime" ] isEqualToString:@"YES"])
    {
        [defaults setObject:@"NO" forKey:@"IsChartBoostTime"];
        [defaults synchronize];
        return YES;
    }
    else if ([[defaults objectForKey:@"IsChartBoostTime" ] isEqualToString:@"NO"])
    {
        [defaults setObject:@"YES" forKey:@"IsChartBoostTime"];
        [defaults synchronize];
        return NO;
    }
    return NO;
}







@end
