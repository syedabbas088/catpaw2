//
//  SettingsViewController.m
//  Word in Pieces
//
//  Created by Saad Zubair on 2/4/14.
//  Copyright (c) 2014 Horizon Technology. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    bound = [[UIScreen mainScreen] bounds];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clicked_Close_Button:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)clicked_Feedback_Button:(id)sender {
    [self Load_Email_Screen];
}

-(void)Load_Email_Screen
{
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *feedback = [[MFMailComposeViewController alloc] init];
        feedback.mailComposeDelegate = self;
        [feedback setSubject:@"Feedback"];
        [feedback setToRecipients:[NSArray arrayWithObject:@"WordsMaker@horizon-world.com"]];
        [self presentModalViewController:feedback animated:YES];
    }
    else
    {
        [[[UIAlertView alloc] initWithTitle:@"Can't Send" message:@"Mail account is not configured, please configure it and try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
	switch (result)
    {
        case MFMailComposeResultCancelled:
		{
			break;
		}
        case MFMailComposeResultSaved:
		{
            break;
		}
        case MFMailComposeResultSent:
		{
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Email Status" message:@"Your Feedback has been sent" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alert show];
            
            break;
		}
        case MFMailComposeResultFailed:
		{
			break;
		}
            
        default:
        {
            
        }
            break;
    }
    [self dismissModalViewControllerAnimated:YES ];
}

- (IBAction)clicked_How_To_Play_Button:(id)sender
{
    if(bound.size.height>568){
        UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [invisibleButton addTarget:self
                            action:@selector(removeHowToPlay:)
                  forControlEvents:UIControlEventTouchDown];
        invisibleButton.frame = CGRectMake(0, 0, 768, 1024);
        [self.view addSubview:invisibleButton];
        
        self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-1024,768,1024)];
        self.img.image=[UIImage imageNamed:@"how-to-play_ipad.jpg"];
        [self.view addSubview:self.img];
        
        [self.view bringSubviewToFront:self.img];
        
        CGRect downwards = CGRectMake(0, 0, 768, 1024);
        
        [UIView animateWithDuration:0.5f
                              delay:0.0f
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             [self.img setFrame:downwards];
                         }
                         completion:nil];
        
        [self.view bringSubviewToFront:invisibleButton];
    }
    else if(bound.size.height==568){
        UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [invisibleButton addTarget:self
                            action:@selector(removeHowToPlay:)
                  forControlEvents:UIControlEventTouchDown];
        invisibleButton.frame = CGRectMake(0, 0, 320, 568);
        [self.view addSubview:invisibleButton];
        
        self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-568,320,568)];
        self.img.image=[UIImage imageNamed:@"how-to-play_ip5.jpg"];
        [self.view addSubview:self.img];
        
        [self.view bringSubviewToFront:self.img];
        
        CGRect downwards = CGRectMake(0, 0, 320, 568);
        
        [UIView animateWithDuration:0.5f
                              delay:0.0f
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             [self.img setFrame:downwards];
                         }
                         completion:nil];
        
        [self.view bringSubviewToFront:invisibleButton];
    }
    else if(bound.size.height<568){
        UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [invisibleButton addTarget:self
                            action:@selector(removeHowToPlay:)
                  forControlEvents:UIControlEventTouchDown];
        invisibleButton.frame = CGRectMake(0, 0, 320, 480);
        [self.view addSubview:invisibleButton];
        
        self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-568,320,480)];
        self.img.image=[UIImage imageNamed:@"how-to-play_ip4.jpg"];
        [self.view addSubview:self.img];
        
        [self.view bringSubviewToFront:self.img];
        
        CGRect downwards = CGRectMake(0, 0, 320, 480);
        
        [UIView animateWithDuration:0.5f
                              delay:0.0f
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             [self.img setFrame:downwards];
                         }
                         completion:nil];
        
        [self.view bringSubviewToFront:invisibleButton];
    }
}


-(IBAction)removeHowToPlay:(id)sender{
    
    
    
    
    if(bound.size.height>568){
        UIButton* btn = (UIButton*)sender;
        CGRect downwards = CGRectMake(0,-1024,768,1004);
        [UIView animateWithDuration:0.5f
                              delay:0.0f
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             [self.img setFrame:downwards];
                         }
                         completion:nil];
        
        [self.view sendSubviewToBack:btn];
    }
    else if(bound.size.height==568){
        UIButton* btn = (UIButton*)sender;
        CGRect downwards = CGRectMake(0,-568,320,568);
        [UIView animateWithDuration:0.5f
                              delay:0.0f
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             [self.img setFrame:downwards];
                         }
                         completion:nil];
        
        [self.view sendSubviewToBack:btn];
    }
    else if(bound.size.height<568){
        UIButton* btn = (UIButton*)sender;
        CGRect downwards = CGRectMake(0,-480,320,480);
        [UIView animateWithDuration:0.5f
                              delay:0.0f
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             [self.img setFrame:downwards];
                         }
                         completion:nil];
        
        [self.view sendSubviewToBack:btn];
    }
    
    
    
    
    
    
}


- (IBAction)clicked_Restore_Purchases_Button:(id)sender {
    if(![[DataManager DataManagerSharedInstance] Is_Restore_Purchases_Done]){
        [[InAppPurchaseManager InAppPurchaseManagerSharedInstance] Restore_ProductsWithDelegate:self WithSelector:@selector(restoresuccessful) WithErrorSelector:@selector(Restore_Purchase_Failed)];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Restore Purchases"
                                                        message:@"You Have Already Restored Your Purchases Successfully."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    
    
    
    
}

-(void)restoresuccessful
{
    if(![[DataManager DataManagerSharedInstance] Is_Restore_Purchases_Done]){
        
        //[[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"removeads"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Restore Purchase Successful"
                                                        message:@"Restorations Completed."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [[DataManager DataManagerSharedInstance] Set_Restore_Purchases_Done];
    }
}

-(void)Restore_Purchase_Failed
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Restore Purchase UnSuccessful"
                                                    message:@"Please Try Again"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    
}
@end
