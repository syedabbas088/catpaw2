//#import "PlayGridViewController.h"
//#import <Social/Social.h>
//@implementation PlayGridViewController
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
//
//- (void) timerFireMethod:(NSTimer *) theTimer
//{
//    if(timeToResetTimer)
//    {
//        self.minutes = 0;
//        self.seconds = 0;
//        if(choice==0){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option0:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option0:self.minutes];
//        }
//        else if(choice ==1){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option1:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option1:self.minutes];
//        }
//        else if(choice ==2){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option2:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option2:self.minutes];
//        }
//        else if(choice ==3){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option3:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option3:self.minutes];
//        }
//        else if(choice ==4){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option4:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option4:self.minutes];
//        }
//        else if(choice ==5){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option5:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option5:self.minutes];
//        }
//        else if(choice ==6){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option6:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option6:self.minutes];
//        }
//        else if(choice ==7){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option7:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option7:self.minutes];
//        }
//        timeToResetTimer = false;
//    }
//    
//    if(!timerPause && !timerHowToPlayPause){
//        
//        self.seconds++;
//        
//        if(self.seconds!=0 && self.seconds%10 == 0){
//            [self animate_Hint];
//        }
//        
//        if (self.seconds == 60) {
//            self.minutes++;
//            self.seconds = 0;
//        }
//        if(choice==0){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option0:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option0:self.minutes];
//        }
//        else if(choice ==1){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option1:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option1:self.minutes];
//        }
//        else if(choice ==2){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option2:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option2:self.minutes];
//        }
//        else if(choice ==3){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option3:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option3:self.minutes];
//        }
//        else if(choice ==4){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option4:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option4:self.minutes];
//        }
//        else if(choice ==5){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option5:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option5:self.minutes];
//        }
//        else if(choice ==6){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option6:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option6:self.minutes];
//        }
//        else if(choice ==7){
//            [[DataManager DataManagerSharedInstance] Set_Seconds_Option7:self.seconds];
//            [[DataManager DataManagerSharedInstance] Set_Minutes_Option7:self.minutes];
//        }
//        
//        
//        self.secondsDisplay.text = [NSString stringWithFormat:@":%02d", self.seconds];
//        self.minutesDisplay.text = [NSString stringWithFormat:@"%02d", self.minutes];
//        
//        
//        int timeCalculatedInSeconds = (self.minutes*60)+self.seconds;
//        
//        if(timeCalculatedInSeconds >= thresholdToRemoveStarFirstTime && timeCalculatedInSeconds < thresholdToRemoveStarSecondTime){
//            self.purpleStar.hidden = YES;
//        }
//        else if(timeCalculatedInSeconds >= thresholdToRemoveStarSecondTime){
//            self.purpleStar.hidden = YES;
//            self.blueStar.hidden = YES;
//        }
//        
//        /*if(self.seconds < 10){
//         self.secondsDisplay.text = [NSString stringWithFormat:@":0%d", self.seconds];
//         }
//         else{
//         self.secondsDisplay.text = [NSString stringWithFormat:@":%d", self.seconds];
//         }
//         self.minutesDisplay.text = [NSString stringWithFormat:@"%d", self.minutes];*/
//    }
//}
//
//
//
//-(void)removeGridsAndButtonsSubviews
//{
//    NSArray *viewsToRemove = [self.view subviews];
//    for (UIView *v in viewsToRemove) {
//        if([v isKindOfClass:[Custom_View class]]){
//            [v removeFromSuperview];
//        }
//        else if([v isKindOfClass:[CustomButton class]]){
//            [v removeFromSuperview];
//        }
//    }
//}
//
//
//-(void)calculateScore
//{
//    int secondsTakenToCompleteLevel = (self.minutes*60)+self.seconds;
//    if(choicD == 3){
//        if([self.modeDifficulty isEqualToString:@"All"] || [self.modeDifficulty isEqualToString:@"Fixed"]){
//            if(secondsTakenToCompleteLevel<=20){
//                int min = 3500;
//                int max = 3600;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>20 && secondsTakenToCompleteLevel<=30){
//                int min = 3300;
//                int max = 3400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>30 && secondsTakenToCompleteLevel<=40){
//                int min = 2800;
//                int max = 3000;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>40 && secondsTakenToCompleteLevel<=50){
//                int min = 2500;
//                int max = 2550;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>50 && secondsTakenToCompleteLevel<=70){
//                int min = 1900;
//                int max = 1950;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>70 && secondsTakenToCompleteLevel<=90){
//                int min = 1700;
//                int max = 1750;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>90 && secondsTakenToCompleteLevel<=150){
//                int min = 1600;
//                int max = 1650;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>150){
//                int min = 1500;
//                int max = 1550;
//                
//                points = arc4random() % (max - min) + min;
//            }
//        }
//    }
//    else if(choicD == 4){
//        if([self.modeDifficulty isEqualToString:@"Easy"] || [self.modeDifficulty isEqualToString:@"Fixed"]){
//            if(secondsTakenToCompleteLevel<=30){
//                int min = 5000;
//                int max = 5200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>30 && secondsTakenToCompleteLevel<=40){
//                int min = 4600;
//                int max = 4800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>40 && secondsTakenToCompleteLevel<=50){
//                int min = 4200;
//                int max = 4400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>50 && secondsTakenToCompleteLevel<=60){
//                int min = 3900;
//                int max = 4100;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>60 && secondsTakenToCompleteLevel<=75){
//                int min = 3650;
//                int max = 3750;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>75 && secondsTakenToCompleteLevel<=100){
//                int min = 3500;
//                int max = 3550;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>100 && secondsTakenToCompleteLevel<=150){
//                int min = 3300;
//                int max = 3400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>150 && secondsTakenToCompleteLevel<=200){
//                int min = 3150;
//                int max = 3200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>200 && secondsTakenToCompleteLevel<=250){
//                int min = 3000;
//                int max = 3050;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>250 && secondsTakenToCompleteLevel<=300){
//                int min = 2900;
//                int max = 2950;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>300 && secondsTakenToCompleteLevel<=400){
//                int min = 2800;
//                int max = 2825;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>400 && secondsTakenToCompleteLevel<=550){
//                int min = 2700;
//                int max = 2725;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>550 && secondsTakenToCompleteLevel<=750){
//                int min = 2600;
//                int max = 2625;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>750){
//                int min = 2500;
//                int max = 2550;
//                
//                points = arc4random() % (max - min) + min;
//            }
//        }
//        else if([self.modeDifficulty isEqualToString:@"Medium"]){
//            if(secondsTakenToCompleteLevel<=30){
//                int min = 6000;
//                int max = 6200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>30 && secondsTakenToCompleteLevel<=40){
//                int min = 5600;
//                int max = 5800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>40 && secondsTakenToCompleteLevel<=50){
//                int min = 5200;
//                int max = 5400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>50 && secondsTakenToCompleteLevel<=60){
//                int min = 4900;
//                int max = 5100;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>60 && secondsTakenToCompleteLevel<=75){
//                int min = 4650;
//                int max = 4750;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>75 && secondsTakenToCompleteLevel<=100){
//                int min = 4500;
//                int max = 4550;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>100 && secondsTakenToCompleteLevel<=150){
//                int min = 4300;
//                int max = 4400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>150 && secondsTakenToCompleteLevel<=200){
//                int min = 4150;
//                int max = 4200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>200 && secondsTakenToCompleteLevel<=250){
//                int min = 4000;
//                int max = 4050;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>250 && secondsTakenToCompleteLevel<=300){
//                int min = 3900;
//                int max = 3950;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>300 && secondsTakenToCompleteLevel<=400){
//                int min = 3800;
//                int max = 3825;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>400 && secondsTakenToCompleteLevel<=550){
//                int min = 3700;
//                int max = 3725;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>550 && secondsTakenToCompleteLevel<=750){
//                int min = 3600;
//                int max = 3625;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>750){
//                int min = 3500;
//                int max = 3550;
//                
//                points = arc4random() % (max - min) + min;
//            }
//        }
//        else if([self.modeDifficulty isEqualToString:@"Hard"]){
//            if(secondsTakenToCompleteLevel<=30){
//                int min = 7000;
//                int max = 7200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>30 && secondsTakenToCompleteLevel<=40){
//                int min = 6600;
//                int max = 6800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>40 && secondsTakenToCompleteLevel<=50){
//                int min = 6200;
//                int max = 6400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>50 && secondsTakenToCompleteLevel<=60){
//                int min = 5900;
//                int max = 6100;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>60 && secondsTakenToCompleteLevel<=75){
//                int min = 5650;
//                int max = 5750;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>75 && secondsTakenToCompleteLevel<=100){
//                int min = 5500;
//                int max = 5550;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>100 && secondsTakenToCompleteLevel<=150){
//                int min = 5300;
//                int max = 5400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>150 && secondsTakenToCompleteLevel<=200){
//                int min = 5150;
//                int max = 5200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>200 && secondsTakenToCompleteLevel<=250){
//                int min = 5000;
//                int max = 5050;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>250 && secondsTakenToCompleteLevel<=300){
//                int min = 4900;
//                int max = 4950;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>300 && secondsTakenToCompleteLevel<=400){
//                int min = 4800;
//                int max = 4825;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>400 && secondsTakenToCompleteLevel<=550){
//                int min = 4700;
//                int max = 4725;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>550 && secondsTakenToCompleteLevel<=750){
//                int min = 4600;
//                int max = 4625;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>750){
//                int min = 4500;
//                int max = 4550;
//                
//                points = arc4random() % (max - min) + min;
//            }
//        }
//    }
//    else if(choicD == 5){
//        if([self.modeDifficulty isEqualToString:@"Easy"]){
//            if(secondsTakenToCompleteLevel<=60){
//                int min = 9000;
//                int max = 9200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>60 && secondsTakenToCompleteLevel<=80){
//                int min = 8600;
//                int max = 8800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>80 && secondsTakenToCompleteLevel<=110){
//                int min = 8200;
//                int max = 8400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>110 && secondsTakenToCompleteLevel<=150){
//                int min = 7900;
//                int max = 8000;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>150 && secondsTakenToCompleteLevel<=225){
//                int min = 7500;
//                int max = 7600;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>225 && secondsTakenToCompleteLevel<=300){
//                int min = 7200;
//                int max = 7300;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>300 && secondsTakenToCompleteLevel<=450){
//                int min = 7000;
//                int max = 7100;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>450 && secondsTakenToCompleteLevel<=600){
//                int min = 6700;
//                int max = 6800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>600 && secondsTakenToCompleteLevel<=750){
//                int min = 6300;
//                int max = 6400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>750 && secondsTakenToCompleteLevel<=900){
//                int min = 6100;
//                int max = 6150;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>900){
//                int min = 6000;
//                int max = 6025;
//                
//                points = arc4random() % (max - min) + min;
//            }
//        }
//        else if([self.modeDifficulty isEqualToString:@"Medium"] || [self.modeDifficulty isEqualToString:@"EasyPlusMedium"]){
//            if(secondsTakenToCompleteLevel<=60){
//                int min = 10000;
//                int max = 10200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>60 && secondsTakenToCompleteLevel<=80){
//                int min = 9600;
//                int max = 9800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>80 && secondsTakenToCompleteLevel<=110){
//                int min = 9200;
//                int max = 9400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>110 && secondsTakenToCompleteLevel<=150){
//                int min = 8900;
//                int max = 9000;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>150 && secondsTakenToCompleteLevel<=225){
//                int min = 8500;
//                int max = 8600;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>225 && secondsTakenToCompleteLevel<=300){
//                int min = 8200;
//                int max = 8300;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>300 && secondsTakenToCompleteLevel<=450){
//                int min = 8000;
//                int max = 8100;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>450 && secondsTakenToCompleteLevel<=600){
//                int min = 7700;
//                int max = 7800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>600 && secondsTakenToCompleteLevel<=750){
//                int min = 7300;
//                int max = 7400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>750 && secondsTakenToCompleteLevel<=900){
//                int min = 7100;
//                int max = 7150;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>900){
//                int min = 7000;
//                int max = 7025;
//                
//                points = arc4random() % (max - min) + min;
//            }
//        }
//        else if([self.modeDifficulty isEqualToString:@"Hard"]){
//            if(secondsTakenToCompleteLevel<=60){
//                int min = 12000;
//                int max = 12200;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>60 && secondsTakenToCompleteLevel<=80){
//                int min = 11600;
//                int max = 11800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>80 && secondsTakenToCompleteLevel<=110){
//                int min = 11200;
//                int max = 11400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>110 && secondsTakenToCompleteLevel<=150){
//                int min = 10900;
//                int max = 11000;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>150 && secondsTakenToCompleteLevel<=225){
//                int min = 10500;
//                int max = 10600;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>225 && secondsTakenToCompleteLevel<=300){
//                int min = 10200;
//                int max = 10300;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>300 && secondsTakenToCompleteLevel<=450){
//                int min = 10000;
//                int max = 10100;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>450 && secondsTakenToCompleteLevel<=600){
//                int min = 9700;
//                int max = 9800;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>600 && secondsTakenToCompleteLevel<=750){
//                int min = 9300;
//                int max = 9400;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>750 && secondsTakenToCompleteLevel<=900){
//                int min = 9100;
//                int max = 9150;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>900){
//                int min = 9000;
//                int max = 9025;
//                
//                points = arc4random() % (max - min) + min;
//            }
//        }
//    }
//    else if(choicD == 6){
//        if([self.modeDifficulty isEqualToString:@"All"]){
//            if(secondsTakenToCompleteLevel<=90){
//                int min = 18000;
//                int max = 19000;
//                
//                points = arc4random() % (max - min) + min;
//                
//            }
//            else if(secondsTakenToCompleteLevel>90 && secondsTakenToCompleteLevel<=120){
//                int min = 17000;
//                int max = 17500;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>120 && secondsTakenToCompleteLevel<=200){
//                int min = 15000;
//                int max = 15500;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>200 && secondsTakenToCompleteLevel<=300){
//                int min = 14000;
//                int max = 14500;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>300 && secondsTakenToCompleteLevel<=450){
//                int min = 13000;
//                int max = 13500;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>450 && secondsTakenToCompleteLevel<=900){
//                int min = 12000;
//                int max = 12500;
//                
//                points = arc4random() % (max - min) + min;
//            }
//            else if(secondsTakenToCompleteLevel>900){
//                int min = 11500;
//                int max = 11700;
//                
//                points = arc4random() % (max - min) + min;
//            }
//        }
//    }
//}
//
//-(void)winDoIt
//{
//    if([[DataManager DataManagerSharedInstance] IncrementLevel:self.pack_dic ForPackID:[self.pack_dic objectForKey:@"iD"]])
//    {
//        [[DataManager DataManagerSharedInstance] SetPackDic_CurrentLevel:self.pack_dic ForPackID:[self.pack_dic objectForKey:@"iD"]];
//        
//        [self calculateScore];
//        /*if(timeCalculatedInSeconds >= thresholdToRemoveStarFirstTime && timeCalculatedInSeconds < thresholdToRemoveStarSecondTime){
//         purpleStar.hidden = YES;
//         }
//         else if(timeCalculatedInSeconds >= thresholdToRemoveStarSecondTime){
//         purpleStar.hidden = YES;
//         blueStar.hidden = YES;
//         }
//         else{
//         purpleStar.hidden = NO;
//         blueStar.hidden = NO;
//         greenStar.hidden = NO;
//         }*/
//        
//        int timeCalculatedInSeconds = (self.minutes*60)+self.seconds;
//        if(timeCalculatedInSeconds <thresholdToRemoveStarFirstTime)
//        {
//            timerPause = true;
//            self.seconds = 0;
//            self.minutes = 0;
//            if(choice==0){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option0:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option0:self.minutes];
//            }
//            else if(choice ==1){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option1:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option1:self.minutes];
//            }
//            else if(choice ==2){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option2:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option2:self.minutes];
//            }
//            else if(choice ==3){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option3:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option3:self.minutes];
//            }
//            else if(choice ==4){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option4:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option4:self.minutes];
//            }
//            else if(choice ==5){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option5:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option5:self.minutes];
//            }
//            else if(choice ==6){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option6:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option6:self.minutes];
//            }
//            else if(choice ==7){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option7:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option7:self.minutes];
//            }
//            
//            ThreeStar *threeStar = [[ThreeStar alloc] initWithNibName:@"ThreeStar" bundle:nil];
//            /*  if(isUserLoggedIn){
//             NSString *myScore = [NSString stringWithFormat: @"%d", (int)points];
//             threeStar.scoreDetails = [NSMutableArray new];
//             [[DataManager DataManagerSharedInstance] setScores:myScore inArray:threeStar.scoreDetails];
//             }*/
//            threeStar.scenarioNumber = 3;
//            threeStar.score = points;
//            if(isCurrentLevelModeOfFive == true)
//            {
//                threeStar.isCurrentLevelModeOfFive = 1;
//            }
//            else
//            {
//                threeStar.isCurrentLevelModeOfFive = 0;
//            }
//            
//            if(levelID == 1 || levelID == 3 || levelID == 5 || levelID == 7 || levelID == 9)
//            {
//                threeStar.adsTime = 0;
//            }
//            else
//            {
//                threeStar.adsTime = 1;
//            }
//            
//            [self.navigationController pushViewController:threeStar animated:YES];
//            //timerPause = true;
//        }
//        else if(timeCalculatedInSeconds >= thresholdToRemoveStarFirstTime && timeCalculatedInSeconds < thresholdToRemoveStarSecondTime){
//            timerPause = true;
//            self.seconds = 0;
//            self.minutes = 0;
//            if(choice==0){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option0:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option0:self.minutes];
//            }
//            else if(choice ==1){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option1:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option1:self.minutes];
//            }
//            else if(choice ==2){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option2:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option2:self.minutes];
//            }
//            else if(choice ==3){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option3:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option3:self.minutes];
//            }
//            else if(choice ==4){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option4:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option4:self.minutes];
//            }
//            else if(choice ==5){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option5:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option5:self.minutes];
//            }
//            else if(choice ==6){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option6:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option6:self.minutes];
//            }
//            else if(choice ==7){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option7:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option7:self.minutes];
//            }
//            
//            
//            ThreeStar *threeStar = [[ThreeStar alloc] initWithNibName:@"ThreeStar" bundle:nil];
//            /* if(isUserLoggedIn){
//             NSString *myScore = [NSString stringWithFormat: @"%d", (int)points];
//             threeStar.scoreDetails = [NSMutableArray new];
//             [[DataManager DataManagerSharedInstance] setScores:myScore inArray:threeStar.scoreDetails];
//             }*/
//            threeStar.scenarioNumber = 2;
//            threeStar.score = points;
//            if(isCurrentLevelModeOfFive == true)
//            {
//                threeStar.isCurrentLevelModeOfFive = 1;
//            }
//            else
//            {
//                threeStar.isCurrentLevelModeOfFive = 0;
//            }
//            if(levelID == 1 || levelID == 3 || levelID == 5 || levelID == 7 || levelID == 9)
//            {
//                threeStar.adsTime = 0;
//            }
//            else
//            {
//                threeStar.adsTime = 1;
//            }
//            [self.navigationController pushViewController:threeStar animated:YES];
//            //TwoStar *twoStar = [[TwoStar alloc] initWithNibName:@"TwoStar" bundle:nil];
//            //[self.navigationController pushViewController:twoStar animated:YES];
//            //timerPause = true;
//        }
//        else if(timeCalculatedInSeconds >= thresholdToRemoveStarSecondTime){
//            timerPause = true;
//            self.seconds = 0;
//            self.minutes = 0;
//            if(choice==0){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option0:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option0:self.minutes];
//            }
//            else if(choice ==1){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option1:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option1:self.minutes];
//            }
//            else if(choice ==2){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option2:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option2:self.minutes];
//            }
//            else if(choice ==3){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option3:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option3:self.minutes];
//            }
//            else if(choice ==4){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option4:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option4:self.minutes];
//            }
//            else if(choice ==5){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option5:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option5:self.minutes];
//            }
//            else if(choice ==6){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option6:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option6:self.minutes];
//            }
//            else if(choice ==7){
//                [[DataManager DataManagerSharedInstance] Set_Seconds_Option7:self.seconds];
//                [[DataManager DataManagerSharedInstance] Set_Minutes_Option7:self.minutes];
//            }
//            
//            
//            ThreeStar *threeStar = [[ThreeStar alloc] initWithNibName:@"ThreeStar" bundle:nil];
//            /*   if(isUserLoggedIn){
//             NSString *myScore = [NSString stringWithFormat: @"%d", (int)points];
//             threeStar.scoreDetails = [NSMutableArray new];
//             [[DataManager DataManagerSharedInstance] setScores:myScore inArray:threeStar.scoreDetails];
//             }*/
//            threeStar.scenarioNumber = 1;
//            threeStar.score = points;
//            if(isCurrentLevelModeOfFive == true)
//            {
//                threeStar.isCurrentLevelModeOfFive = 1;
//            }
//            else
//            {
//                threeStar.isCurrentLevelModeOfFive = 0;
//            }
//            if(levelID == 1 || levelID == 3 || levelID == 5 || levelID == 7 || levelID == 9)
//            {
//                threeStar.adsTime = 0;
//            }
//            else
//            {
//                threeStar.adsTime = 1;
//            }
//            [self.navigationController pushViewController:threeStar animated:YES];
//            
//            
//        }
//        [self.secondsTimer invalidate];
//        timeToResetTimer = true;
//        
//        self.secondsDisplay.text = [NSString stringWithFormat:@":%02d", self.seconds];
//        self.minutesDisplay.text = [NSString stringWithFormat:@"%02d", self.minutes];
//        
//        
//        self.purpleStar.hidden = NO;
//        self.blueStar.hidden = NO;
//        self.greenStar.hidden = NO;
//        
//        
//        
//        /* if(self.seconds < 10){
//         self.secondsDisplay.text = [NSString stringWithFormat:@":0%d", self.seconds];
//         }
//         else{
//         self.secondsDisplay.text = [NSString stringWithFormat:@":%d", self.seconds];
//         }
//         self.minutesDisplay.text = [NSString stringWithFormat:@"%d", self.minutes];*/
//        
//        YforIphone5 = 0;
//        [self performSelector:@selector(loadGame) withObject:nil afterDelay:0.5 ];
//        //[self loadGame];
//    }
//    else
//    {
//        //[[DataManager DataManagerSharedInstance] LoadAllPacksData];
//        [[DataManager DataManagerSharedInstance] SetPackDic_CurrentLevel:self.pack_dic ForPackID:[self.pack_dic objectForKey:@"iD"]];
//        
//        
//        
//        
//        
//        /* NSBundle *bundle = [NSBundle mainBundle];
//         NSDictionary *info = [bundle infoDictionary];
//         NSString *AppName = [info objectForKey:@"CFBundleDisplayName"];*/
//        UIAlertView * alertview=[[UIAlertView alloc] initWithTitle:@"Congratulations!!!" message:@"You have completed all Levels of this Pack. Try Another one." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
//        alertview.tag=1021;
//        [alertview show];
//    }
//}
//
//-(void)winConditionCheck
//{
//    int movedButtonsCount = 0;
//    for(int m = 0; m < N*N; m++){
//        CustomButton *btnCheck = [self.movedButtons objectAtIndex:m];
//        if(![btnCheck isEqual:[NSNull null]]){
//            if(!btnCheck.canBeMoved){
//                movedButtonsCount++;
//            }
//        }
//    }
//    if(movedButtonsCount == N*N){
//        self.view.userInteractionEnabled = NO;
//        timerPause = true;
//        [self performSelector:@selector(winDoIt) withObject:nil afterDelay:0.5 ];
//    }
//}
//
//
//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    if (alertView.tag==1021)
//    {
//        if(buttonIndex==0)
//        {
//            //[letters removeAllObjects];
//            //[movedButtons removeAllObjects];
//            //[allButtons removeAllObjects];
//            
//            if([self.myDelegate respondsToSelector:@selector(setCaseNumber:)])
//            {
//                [self.myDelegate setCaseNumber:1];
//            }
//            
//            [self.secondsTimer invalidate];
//            [NSObject cancelPreviousPerformRequestsWithTarget:self];
//            [[NSNotificationCenter defaultCenter] removeObserver:self];
//            [self.navigationController popViewControllerAnimated:YES];
//        }
//    }
//    else if (alertView.tag==2021)
//    {
//        if(buttonIndex==0)
//        {
//            
//        }
//        else{
//            //[letters removeAllObjects];
//            //[movedButtons removeAllObjects];
//            //[allButtons removeAllObjects];
//            
//            
//            if([self.myDelegate respondsToSelector:@selector(setCaseNumber:)])
//            {
//                [self.myDelegate setCaseNumber:2];
//            }
//            
//            
//            [self.secondsTimer invalidate];
//            [NSObject cancelPreviousPerformRequestsWithTarget:self];
//            [[NSNotificationCenter defaultCenter] removeObserver:self];
//            [self.navigationController popViewControllerAnimated:YES];
//        }
//    }
//    else if (alertView.tag==8000){ // yes answer
//        
//        // did the alert responded to is the one prompting about user name? if so, upload!
//        if (buttonIndex==1) {
//            // then upload
//            [self controlStatusUsable:NO];
//            // NSData* imageData = UIImageJPEGRepresentation(_myImg.image, 90);
//            
//            // @"Please help me to guess the Personality.\nhttps://itunes.apple.com/us/app/guess-aussies/id704407022?ls=1&mt=8"
//            
//            NSMutableDictionary * postParams = [NSMutableDictionary dictionaryWithObjectsAndKeys:
//                                                @"Please help me in Word Trivia. Download Free at  http://itunes.apple.com/app/id813487876", @"message",
//                                                self.myImg.image, @"picture",
//                                                nil];
//            // Here is where the UPLOADING HAPPENS!
//            [FBRequestConnection startWithGraphPath:@"me/photos"
//                                         parameters:postParams
//                                         HTTPMethod:@"POST"
//                                  completionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
//                                      if (!error) {
//                                          
//                                          //[self shareReload];
//                                          
//                                          UIAlertView *tmp = [[UIAlertView alloc]
//                                                              initWithTitle:@"Congratulations!!!"
//                                                              message:@"You have successfully Shared the Puzzle"
//                                                              delegate:self
//                                                              cancelButtonTitle:nil
//                                                              otherButtonTitles:@"OK", nil];
//                                          
//                                          [tmp show];
//                                      } else {
//                                          NSLog(@"error:%@",error );
//                                          UIAlertView *tmp = [[UIAlertView alloc]
//                                                              initWithTitle:@"Error"
//                                                              message:@"Some error happened"
//                                                              delegate:self
//                                                              cancelButtonTitle:nil
//                                                              otherButtonTitles:@"OK", nil];
//                                          
//                                          [tmp show];
//                                      }
//                                      [self controlStatusUsable:YES];
//                                  }];
//            
//        }
//        
//    }
//}
//
//
//-(void)SortWord_arr:(NSMutableArray *)arr
//{
//    for(int i=0;i<[arr count]-1;i++)
//    {
//        //int min=[word.iD intValue];
//        for(int j=i+1;j<[arr count];j++)
//        {
//            Word* w1=[arr objectAtIndex:i];
//            Word* w2=[arr objectAtIndex:j];
//            if([w2.iD intValue] < [w1.iD intValue])
//            {
//                [arr exchangeObjectAtIndex:i withObjectAtIndex:(j)];
//            }
//        }
//    }
//}
//
//
//
//
//-(void)loadGame
//{
//    [self removeGridsAndButtonsSubviews];
//    
//    //timeToResetTimer = true;
//    
//    
//    //int choice=0;
//    
//    /* WinningMomentObserverObject *obj = [WinningMomentObserverObject alloc];
//     
//     obj.wordsCompletedCount = 0;
//     
//     [obj addObserver:self forKeyPath:@"wordsCompletedCount" options:NSKeyValueObservingOptionOld context:nil];*/
//    
//    points = 0;
//    
//    //NSLog(@"%@",self.pack_dic);
//    
//    
//    
//    
//    [self.buttonFramesList removeAllObjects];
//    [self.buttonOnStartFramesList removeAllObjects];
//    //[self.buttonsList removeAllObjects];
//    [self.CustomViewsList removeAllObjects];
//    [self.CustomViewsFramesList removeAllObjects];
//    [self.buttonsShuffledList removeAllObjects];
//    [self.words_array removeAllObjects];
//    [self.revealedLettersArray removeAllObjects];
//    [self.letters removeAllObjects];
//    [self.temporaryArray removeAllObjects];
//    [self.allButtons removeAllObjects];
//    [self.movedButtons removeAllObjects];
//    
//    
//    
//    NSString* tilesString = [[DataManager DataManagerSharedInstance] FetchCurrentModeTiles:self.pack_dic ForPackID:[self.pack_dic objectForKey:@"iD"]];
//    self.modeDifficulty = [[DataManager DataManagerSharedInstance] FetchCurrentModeDifficulty:self.pack_dic ForPackID:[self.pack_dic objectForKey:@"iD"]];
//    //NSLog(@"TILES: %@", tilesString);
//    choicD = [tilesString intValue];
//    
//    if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Quick Play"])
//    {
//        choice=0;
//        
//        if([tilesString isEqualToString:@"3"] && [self.modeDifficulty isEqualToString:@"Fixed"]){
//            thresholdToRemoveStarFirstTime = 25;
//            thresholdToRemoveStarSecondTime = 40;
//        }
//        else if([tilesString isEqualToString:@"4"] && [self.modeDifficulty isEqualToString:@"Fixed"]){
//            thresholdToRemoveStarFirstTime = 40;
//            thresholdToRemoveStarSecondTime = 90;
//        }
//        else if([tilesString isEqualToString:@"4"] && [self.modeDifficulty isEqualToString:@"Easy"]){
//            thresholdToRemoveStarFirstTime = 40;
//            thresholdToRemoveStarSecondTime = 90;
//        }
//        else if([tilesString isEqualToString:@"4"] && [self.modeDifficulty isEqualToString:@"Medium"]){
//            thresholdToRemoveStarFirstTime = 40;
//            thresholdToRemoveStarSecondTime = 90;
//        }
//        else if([tilesString isEqualToString:@"4"] && [self.modeDifficulty isEqualToString:@"Hard"]){
//            thresholdToRemoveStarFirstTime = 40;
//            thresholdToRemoveStarSecondTime = 90;
//        }
//        else if([tilesString isEqualToString:@"5"] && [self.modeDifficulty isEqualToString:@"Easy"]){
//            thresholdToRemoveStarFirstTime = 75;
//            thresholdToRemoveStarSecondTime = 150;
//        }
//        else if([tilesString isEqualToString:@"5"] && [self.modeDifficulty isEqualToString:@"Medium"]){
//            thresholdToRemoveStarFirstTime = 75;
//            thresholdToRemoveStarSecondTime = 150;
//        }
//        else if([tilesString isEqualToString:@"5"] && [self.modeDifficulty isEqualToString:@"Hard"]){
//            thresholdToRemoveStarFirstTime = 75;
//            thresholdToRemoveStarSecondTime = 150;
//        }
//        else if([tilesString isEqualToString:@"6"] && [self.modeDifficulty isEqualToString:@"All"]){
//            thresholdToRemoveStarFirstTime = 120;
//            thresholdToRemoveStarSecondTime = 225;
//        }
//        
//    }
//    if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Kids"])
//    {
//        choice=1;
//        //choicD=6;
//        thresholdToRemoveStarFirstTime = 25;
//        thresholdToRemoveStarSecondTime = 40;
//    }
//    else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Expert"])
//    {
//        choice=2;
//        //choicD=5;
//        thresholdToRemoveStarFirstTime = 40;
//        thresholdToRemoveStarSecondTime = 90;
//    }
//    else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Superstar"])
//    {
//        choice=3;
//        //choicD=4;
//        thresholdToRemoveStarFirstTime = 40;
//        thresholdToRemoveStarSecondTime = 90;
//    }
//    else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Master Mind"])
//    {
//        choice=4;
//        //choicD=5;
//        thresholdToRemoveStarFirstTime = 75;
//        thresholdToRemoveStarSecondTime = 150;
//    }
//    else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Kingpin"])
//    {
//        choice=5;
//        //choicD=4;
//        thresholdToRemoveStarFirstTime = 75;
//        thresholdToRemoveStarSecondTime = 150;
//    }
//    else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Legendary"])
//    {
//        choice=6;
//        //choicD=5;
//        thresholdToRemoveStarFirstTime = 120;
//        thresholdToRemoveStarSecondTime = 225;
//    }
//    /*   else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Pink Pack"])
//     {
//     choice=7;
//     //choicD=6;
//     }*/
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    /*if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"3x3"])
//     {
//     choice=0;
//     }
//     else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"4x4"])
//     {
//     choice=1;
//     }
//     else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"5x5"])
//     {
//     choice=2;
//     }
//     else if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"6x6"])
//     {
//     choice=3;
//     }*/
//    
//    //NSLog(@"%i", choice);
//    
//    double gridX=0;
//    double gridY=0;
//    if(bound.size.height > 568){
//        
//        if(choicD==6){
//            gridX = 117;
//            gridY = 128;
//        }
//        else if(choicD==5){
//            gridX = 120;
//            gridY = 128;
//        }
//        else if(choicD==4){
//            gridX = 128;
//            gridY = 135;
//        }
//        else if(choicD==3){
//            gridX = 128;
//            gridY = 142;
//        }
//        
//    }
//    else if(bound.size.height <= 568){
//        
//        if(choicD==6){
//            gridX = 47;
//            gridY = 64+iphone5gridYfactor;
//        }
//        else if(choicD==5){
//            gridX = 48.5;
//            gridY = 64+iphone5gridYfactor;
//        }
//        else if(choicD==4){
//            gridX = 51.5;
//            gridY = 68+iphone5gridYfactor;
//        }
//        else if(choicD==3){
//            gridX = 51.5;
//            gridY = 68+iphone5gridYfactor;
//        }
//        
//    }
//    else{
//        gridX = 53;//bound.size.width * 0.171875;//55
//        gridY = 69 + iphone5gridYfactor; //bound.size.height * 0.141667; //68
//    }
//    
//    
//    double newX = bound.size.width * 0.0625;//20
//    double newY = bound.size.height * 0.7625;//366
//    
//    
//    double gridWidth = bound.size.width - gridX*2;
//    double gridHeight = bound.size.width - gridX*1.75;
//    
//    
//    double width = bound.size.width - newX*4.5;
//    double height = bound.size.height-newY-(bound.size.height*0.008333);//460-370=90
//    
//    
//    double mywidth = width/(choicD);
//    double myheight = height/(choicD);
//    
//    gridCellWidth = gridWidth/(choicD);
//    gridCellHeight = gridHeight/(choicD);
//    
//    //    self.buttonFramesList = [[NSMutableArray alloc]init];
//    //    self.buttonOnStartFramesList = [[NSMutableArray alloc]init];
//    //    self.buttonsList = [[NSMutableArray alloc]init];
//    //    self.CustomViewsList = [[NSMutableArray alloc]init];
//    //    self.CustomViewsFramesList = [[NSMutableArray alloc]init];
//    //    self.buttonsShuffledList = [[NSMutableArray alloc]init];
//    
//    
//    int totalButtons = ((choicD)*(choicD));
//    //    self.allButtons = [[NSMutableArray alloc]init];
//    //
//    //    self.movedButtons = [[NSMutableArray alloc]init];
//    for(int i=0; i<totalButtons; i++){
//        [self.movedButtons addObject:[NSNull null]];
//    }
//    
//    
//    //int totalWords = ((choicD)+(choicD));
//    
//    
//    //NSLog(@"current_level_id:%@",[self.pack_dic objectForKey:@"current_level_id"]);
//    
//    self.levelObj=[[DataManager DataManagerSharedInstance] LoadLevelWithID:[self.pack_dic objectForKey:@"current_level_id"]];
//    
//    
//    /* comment it */
//    NSArray *myArray = [self.levelObj.revealed_letters_list allObjects];
//    
//    
//    //NSLog(@"level:%@",levelObj);
//    
//    
//    //NSMutableArray * words_array=[[NSMutableArray alloc] init];
//    // NSLog(@"pack dic:%@",self.pack_dic);
//    
//    NSString *str = @"Level";
//    NSString *current_level = [self.pack_dic objectForKey:@"current_level"];
//    
//    levelID = [current_level integerValue];
//    
//    
//    //NSLog(@"Level:%@",current_level);
//    
//    if(levelID == 2){
//        isCurrentLevelModeOfFive = true;
//    }
//    else if((levelID-2)%5 == 0){
//        isCurrentLevelModeOfFive = true;
//    }
//    else{
//        isCurrentLevelModeOfFive = false;
//    }
//    
//    
//    if([[self.pack_dic objectForKey:@"name"] isEqualToString:@"Quick Play"])
//    {
//        NSString *complete = [NSString stringWithFormat:@"%@ %@", str, current_level];
//        self.label_level.text = complete;
//    }
//    else{
//        NSString *name = [self.pack_dic objectForKey:@"name"];
//        NSString *complete = [NSString stringWithFormat:@"%@ %@", name, current_level];
//        self.label_level.text = complete;
//    }
//    
//    int hintCount = [[DataManager DataManagerSharedInstance] Get_Hint_count];
//    NSString *strFromInt = [NSString stringWithFormat:@"%d",hintCount];
//    self.label_hintCount.text = strFromInt;
//    
//    for(Word *wordObj in self.levelObj.words_list)
//    {
//        [self.words_array addObject:wordObj];
//        
//    }
//    
//    totalRevealedLetters=0;
//    //NSMutableArray * revealedLettersArray=[[NSMutableArray alloc] init];
//    for(Reveal_Letters *letterObj in self.levelObj.revealed_letters_list)
//    {
//        [self.revealedLettersArray addObject:letterObj];
//        totalRevealedLetters++;
//    }
//    
//    
//    
//    
//    
//    
//    
//    
//    [self SortWord_arr:self.words_array];
//    
//    
//    // self.words = [[NSMutableArray alloc]initWithCapacity:totalWords];
//    
//    
//    N=choicD;
//    //letters = [[NSMutableArray alloc] init];
//    int counter = 0;
//    for(int x=0; x<N; x++){
//        Word *myWord = [self.words_array objectAtIndex:x];
//        NSString *fooString = myWord.name;
//        fooString=[self Encoded_String:fooString];
//        for (int i=0; i<fooString.length; i++, counter++) {
//            [self.letters addObject:[fooString substringWithRange:NSMakeRange(i, 1)]];
//        }
//        
//        
//    }
//    
//    
//    
//    
//    
//    //NSMutableArray *temporaryArray = [[NSMutableArray alloc]init];
//    int count = 0;
//    for( int j = 0; j < N; j++ ) {
//        for( int i = 0; i < N; i++ ) {
//            
//            self.myView = [[Custom_View alloc] init];
//            [self.myView setTag:count];
//            [self.myView addTarget:self
//                            action:@selector(onClick:)
//                  forControlEvents:UIControlEventTouchDown];
//            
//            NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"empty-box@2x" ofType:@"png"];
//            
//            UIImage * blankBoxImage=[UIImage imageWithContentsOfFile:imagePath];
//            //[myView setImage:blankBoxImage forState:UIControlStateNormal];
//            [self.myView setBackgroundImage:blankBoxImage forState:UIControlStateNormal];
//            
//            if(bound.size.height > 568){
//                if(choicD == 6){
//                    self.myView.frame = CGRectMake(gridX, gridY, 79, 75);
//                }
//                else if(choicD == 5){
//                    self.myView.frame = CGRectMake(gridX, gridY, 94.5, 89.7);
//                }
//                else if(choicD == 4){
//                    self.myView.frame = CGRectMake(gridX, gridY, 110.5, 108.8);
//                }
//                else if(choicD == 3){
//                    self.myView.frame = CGRectMake(gridX, gridY, 155.4, 142.233334);
//                }
//            }
//            else if(bound.size.height <= 568){
//                if(choicD == 6){
//                    self.myView.frame = CGRectMake(gridX, gridY, 33.47, 34.88);
//                }
//                else if(choicD == 5){
//                    self.myView.frame = CGRectMake(gridX, gridY, 40.04, 41.72);
//                }
//                else if(choicD == 4){
//                    self.myView.frame = CGRectMake(gridX, gridY, 46.82, 50.6);
//                }
//                else if(choicD == 3){
//                    self.myView.frame = CGRectMake(gridX, gridY, 64.75, 68);
//                }
//            }
//            else{
//                self.myView.frame = CGRectMake(gridX, gridY, gridCellWidth-10, gridCellHeight-10);
//            }
//            
//            if(count<counter){
//                self.myView.myRightAnswer =[self.letters objectAtIndex:count];
//            }
//            else{
//                self.myView.myRightAnswer = @"-";
//            }
//            [self.CustomViewsFramesList addObject:[NSValue valueWithCGRect:self.myView.frame]];
//            
//            [self.CustomViewsList addObject:self.myView];
//            [self.view addSubview:self.myView];
//            tagOfCurrentSelection = 0;
//            
//            
//            gridX = self.myView.frame.origin.x + self.myView.frame.size.width+12;
//            gridY = self.myView.frame.origin.y;
//            
//            if(bound.size.height > 568){
//                if(choicD == 4){
//                    gridX=gridX+9;
//                }
//                else if(choicD == 3){
//                    gridX=gridX+7;
//                }
//            }
//            else if(bound.size.height <= 568){
//                if(choicD == 6){
//                    gridX=gridX-6.92;
//                }
//                else if(choicD == 5){
//                    gridX=gridX-6.92;
//                }
//                else if(choicD == 4){
//                    gridX=gridX-2.85;
//                }
//                else if(choicD == 3){
//                    gridX=gridX-2;
//                }
//            }
//            
//            
//            
//            
//            [self.temporaryArray addObject:[NSNumber numberWithInteger:count]];
//            self.button = [[CustomButton alloc] init];
//            [self.button setTag:count+200];
//            [self.button addTarget:self
//                            action:@selector(alphabetClicked:)
//                  forControlEvents:UIControlEventTouchDown];
//            if(mywidth <= myheight){
//                self.button.myWidth=mywidth-3;
//                self.button.titleLabel.font = [UIFont systemFontOfSize:self.button.myWidth];
//            }
//            else{
//                self.button.myHeight=myheight-3;
//                self.button.titleLabel.font = [UIFont systemFontOfSize:self.button.myHeight];
//            }
//            
//            if(count<counter){
//                NSString *aString=[self.letters objectAtIndex:count];
//                [self.button setAlphabet:aString];
//                self.button.myTitleValue =[self.letters objectAtIndex:count];
//            }
//            else{
//                [self.button setTitle:@"-" forState:UIControlStateNormal];
//            }
//            
//            //[self.buttonsList addObject:button];
//            if(count<totalButtons){
//                [self.allButtons addObject:self.button];
//            }
//            
//            
//            [self.view addSubview:self.button];
//            
//            count++;
//            
//            
//            
//        }
//        
//        if(bound.size.height > 568){
//            if(choicD == 6){
//                gridX = 117;
//                gridY = gridY+75+11;
//            }
//            else if(choicD == 5){
//                gridX = 120;
//                gridY = gridY+89.7+14;
//            }
//            else if(choicD == 4){
//                gridX = 128;
//                gridY = gridY+108.8+17;
//            }
//            else if(choicD == 3){
//                gridX = 128;
//                gridY = gridY+142.233334+24;
//            }
//        }
//        else if(bound.size.height <= 568){
//            if(choicD == 6){
//                gridX = 47;
//                gridY = gridY+34.88+5.12;
//            }
//            else if(choicD == 5){
//                gridX = 48.5;
//                gridY = gridY+41.72+6.51;
//            }
//            else if(choicD == 4){
//                gridX = 51.5;
//                gridY = gridY+50.6+7.91;
//            }
//            else if(choicD == 3){
//                gridX = 51.5;
//                gridY = gridY+68+11;
//            }
//        }
//        else{
//            gridX = 53;//bound.size.width * 0.171875;
//            gridY = gridY + gridCellHeight + 2;
//        }
//    }
//    
//    self.myCount = count;
//    
//    
//    /////SHUFFLING BUTTONS//////
//    while ([self.temporaryArray count]!=0) {
//        NSInteger randomInt = arc4random() % count;
//        NSNumber *myNum = [NSNumber numberWithInteger:randomInt];
//        //NSInteger value = [myNum integerValue];
//        if([self.temporaryArray containsObject:myNum]){
//            [self.buttonsShuffledList addObject:myNum];
//            [self.temporaryArray removeObject:myNum];
//            
//            //CustomButton *temppp =[[CustomButton alloc] init];
//            self.temppp.frame = CGRectMake(0, 0, 0, 0);
//            
//            [self.buttonFramesList addObject:[NSValue valueWithCGRect:self.temppp.frame]];
//            [self.buttonOnStartFramesList addObject:[NSValue valueWithCGRect:self.temppp.frame]];
//        }
//    }
//    
//    /*  for (int i = 0; i < buttonsShuffledList.count; i++) {
//     NSLog(@"%@",[buttonsShuffledList objectAtIndex:i]);
//     }*/
//    
//    
//    for(int z=0; z<totalRevealedLetters; z++){
//        Reveal_Letters *revealedLetterIndex = [self.revealedLettersArray objectAtIndex:z];
//        CustomButton *tmpButton;
//        if([revealedLetterIndex.type isEqualToString:@"-2"]){
//            int index = [revealedLetterIndex.index intValue];
//            tmpButton = [self.allButtons objectAtIndex:index];
//            tmpButton.fixedBeforeGameStart = true;
//        }
//    }
//    
//    
//    /*    int buttonTempCount=0;
//     for( int j = 0; j < N; j++ ) {
//     for( int i = 0; i < N; i++ ) {
//     
//     
//     
//     
//     
//     
//     
//     int value = [[buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//     CustomButton *buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//     
//     if(!buttonToBeSetRamdomly.fixedBeforeGameStart){
//     buttonToBeSetRamdomly.frame = CGRectMake(newX, newY, mywidth-2, myheight-2);
//     
//     //[self.buttonFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//     //[self.buttonOnStartFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//     
//     [self.buttonFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//     [self.buttonOnStartFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//     
//     //[self.view addSubview:buttonToBeSetRamdomly];
//     newX = buttonToBeSetRamdomly.frame.origin.x + buttonToBeSetRamdomly.frame.size.width+2;
//     newY = buttonToBeSetRamdomly.frame.origin.y;
//     
//     }
//     buttonTempCount++;
//     }
//     newX = bound.size.width * 0.0625;
//     newY = newY + myheight;
//     }*/
//    
//    self.keyboardImageView.frame = CGRectMake(bound.size.width*0, bound.size.height*0.745833+ YforIphone5, bound.size.width, bound.size.height*0.254167);
//    
//    if(choicD == 3){
//        
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"bord-3x@2x" ofType:@"png"];
//        
//        UIImage * gridImage=[UIImage imageWithContentsOfFile:imagePath];
//        [self.gridImageView setImage:gridImage];
//        
//        double incOffset =bound.size.height * 0.08125;//39
//        self.keyboardImageView.frame = CGRectOffset(self.keyboardImageView.frame, 0, incOffset);
//        
//        
//        
//        double startX = bound.size.width * 0.0125;//4;
//        
//        
//        
//        //double startX = bound.size.width * 0.07421875;//23.75;
//        double startY = bound.size.height * 0.8375;//402;
//        startY = startY+ YforIphone5;
//        
//        double fixedBoxWidth = bound.size.width * 0.1109375;//35.5;
//        double fixedBoxHeight = bound.size.height * 0.075;//36;
//        
//        double horizontalGap = bound.size.width * 0.0125;//4;
//        double verticalGap = bound.size.height * 0.00625;//3;
//        
//        
//        int buttonTempCount=0;
//        int i = 0;
//        //int j=0;
//        for( int j = 0; j < 1; j++ ) {
//            if(buttonTempCount>=N*N){
//                break;
//            }
//            CustomButton *buttonToBeSetRamdomly;
//            for(i = 0; i < 6; i++ ) {
//                
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                
//                
//                
//                
//                int value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                
//                while(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    if(buttonTempCount>=N*N){
//                        break;
//                    }
//                    value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                    buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                    if(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                        buttonTempCount++;
//                    }
//                }
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                if(!buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    buttonToBeSetRamdomly.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                    
//                    //[self.buttonFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    //[self.buttonOnStartFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    [self.buttonFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    [self.buttonOnStartFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    //[self.view addSubview:buttonToBeSetRamdomly];
//                    startX = buttonToBeSetRamdomly.frame.origin.x + buttonToBeSetRamdomly.frame.size.width+horizontalGap;
//                    startY = buttonToBeSetRamdomly.frame.origin.y;
//                    
//                }
//                buttonTempCount++;
//            }
//            
//            if(j==0 && i == 6){
//                self.btn_facebook.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                //startY = startY + buttonToBeSetRamdomly.frame.size.height+verticalGap;
//                startX = self.btn_facebook.frame.origin.x + self.btn_facebook.frame.size.width+horizontalGap;
//                startY = self.btn_facebook.frame.origin.y;
//                self.btn_twitter.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//            }
//            
//            startX = bound.size.width * 0.07421875;//23.75;
//            startY = startY + buttonToBeSetRamdomly.frame.size.height+verticalGap;
//        }
//    }
//    else if(choicD == 4){
//        
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"bord-4x@2x" ofType:@"png"];
//        
//        UIImage * gridImage=[UIImage imageWithContentsOfFile:imagePath];
//        [self.gridImageView setImage:gridImage];
//        
//        //NSLog(@"HEIGHT: %f",bound.size.height);
//        
//        double incOffset =bound.size.height * 0.08125;//39
//        self.keyboardImageView.frame = CGRectOffset(self.keyboardImageView.frame, 0, incOffset);
//        
//        
//        double startX = bound.size.width * 0.07421875;//23.75;
//        double startY = bound.size.height * 0.8375;//402;
//        startY = startY+ YforIphone5;
//        
//        double fixedBoxWidth = bound.size.width * 0.1109375;//35.5;
//        double fixedBoxHeight = bound.size.height * 0.075;//36;
//        
//        double horizontalGap = bound.size.width * 0.0125;//4;
//        double verticalGap = bound.size.height * 0.00625;//3;
//        
//        
//        
//        
//        
//        int buttonTempCount=0;
//        int i = 0;
//        int j=0;
//        for(j = 0; j < 2; j++ ) {
//            if(buttonTempCount>=N*N){
//                break;
//            }
//            CustomButton *buttonToBeSetRamdomly;
//            for(i = 0; i < 6; i++ ) {
//                
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                
//                
//                
//                
//                int value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                
//                while(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    if(buttonTempCount>=N*N){
//                        break;
//                    }
//                    value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                    buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                    if(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                        buttonTempCount++;
//                    }
//                }
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                if(!buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    buttonToBeSetRamdomly.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                    
//                    //[self.buttonFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    //[self.buttonOnStartFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    [self.buttonFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    [self.buttonOnStartFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    //[self.view addSubview:buttonToBeSetRamdomly];
//                    startX = buttonToBeSetRamdomly.frame.origin.x + buttonToBeSetRamdomly.frame.size.width+horizontalGap;
//                    startY = buttonToBeSetRamdomly.frame.origin.y;
//                    
//                }
//                buttonTempCount++;
//            }
//            
//            if(j==0 && i == 6){
//                self.btn_facebook.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                
//            }
//            else if(j==1 && i == 6){
//                self.btn_twitter.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//            }
//            startX = bound.size.width * 0.07421875;//23.75;
//            startY = startY + buttonToBeSetRamdomly.frame.size.height+verticalGap;
//        }
//    }
//    else if(choicD == 5){
//        
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"bord-5x@2x" ofType:@"png"];
//        
//        UIImage * gridImage=[UIImage imageWithContentsOfFile:imagePath];
//        [self.gridImageView setImage:gridImage];
//        
//        double startX = bound.size.width * 0.0125;//4;
//        double startY = bound.size.height * 0.754167;//362;
//        startY = startY+ YforIphone5;
//        
//        double fixedBoxWidth = bound.size.width * 0.1109375;//35.5;
//        double fixedBoxHeight = bound.size.height * 0.075;//36;
//        
//        double horizontalGap = bound.size.width * 0.0125;//4;
//        double verticalGap = bound.size.height * 0.00625;//3;
//        
//        
//        int buttonTempCount=0;
//        int i = 0;
//        int j=0;
//        for(j = 0; j < 2; j++ ) {
//            if(buttonTempCount>=N*N){
//                break;
//            }
//            CustomButton *buttonToBeSetRamdomly;
//            for(i = 0; i < 7; i++ ) {
//                
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                
//                
//                
//                
//                int value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                
//                while(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    if(buttonTempCount>=N*N){
//                        break;
//                    }
//                    value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                    buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                    if(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                        buttonTempCount++;
//                    }
//                }
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                if(!buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    buttonToBeSetRamdomly.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                    
//                    //[self.buttonFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    //[self.buttonOnStartFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    [self.buttonFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    [self.buttonOnStartFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    //[self.view addSubview:buttonToBeSetRamdomly];
//                    startX = buttonToBeSetRamdomly.frame.origin.x + buttonToBeSetRamdomly.frame.size.width+horizontalGap;
//                    startY = buttonToBeSetRamdomly.frame.origin.y;
//                    
//                }
//                buttonTempCount++;
//            }
//            
//            if(j==0 && i == 7){
//                self.btn_facebook.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                
//            }
//            else if(j==1 && i == 7){
//                self.btn_twitter.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//            }
//            
//            startX = bound.size.width * 0.0125;//4;
//            startY = startY + buttonToBeSetRamdomly.frame.size.height+verticalGap;
//        }
//        
//        
//        CustomButton *buttonToBeSetRamdomly;
//        
//        startX = bound.size.width * 0.06796875;//4+17.75;
//        startY = bound.size.height * 0.91875;//441;
//        startY = startY + YforIphone5;
//        
//        fixedBoxWidth = bound.size.width * 0.1109375;//35.5;
//        fixedBoxHeight = bound.size.height * 0.075;//36;
//        
//        horizontalGap = bound.size.width * 0.0125;//4;
//        verticalGap = bound.size.height * 0.00625;//3;
//        
//        for(i=0; i<6; i++){
//            if(buttonTempCount>=N*N){
//                break;
//            }
//            
//            
//            
//            
//            
//            int value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//            buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//            
//            while(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                if(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    buttonTempCount++;
//                }
//            }
//            if(buttonTempCount>=N*N){
//                break;
//            }
//            
//            if(!buttonToBeSetRamdomly.fixedBeforeGameStart){
//                buttonToBeSetRamdomly.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                
//                //[self.buttonFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                //[self.buttonOnStartFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                
//                [self.buttonFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                [self.buttonOnStartFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                
//                //[self.view addSubview:buttonToBeSetRamdomly];
//                startX = buttonToBeSetRamdomly.frame.origin.x + buttonToBeSetRamdomly.frame.size.width+horizontalGap;
//                startY = buttonToBeSetRamdomly.frame.origin.y;
//                
//            }
//            buttonTempCount++;
//        }
//    }
//    else if(choicD == 6){
//        
//        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"bord-6x@2x" ofType:@"png"];
//        
//        UIImage * gridImage=[UIImage imageWithContentsOfFile:imagePath];
//        [self.gridImageView setImage:gridImage];
//        
//        double startX = bound.size.width * 0.0125;//4;
//        double startY = bound.size.height * 0.754167;//362;
//        startY = startY+ YforIphone5;
//        
//        double fixedBoxWidth = bound.size.width * 0.1109375;//35.5;
//        double fixedBoxHeight = bound.size.height * 0.075;//36;
//        
//        double horizontalGap = bound.size.width * 0.0125;//4;
//        double verticalGap = bound.size.height * 0.00625;//3;
//        
//        
//        
//        
//        int buttonTempCount=0;
//        int i = 0;
//        int j=0;
//        for(j = 0; j < 3; j++ ) {
//            if(buttonTempCount>=N*N){
//                break;
//            }
//            CustomButton *buttonToBeSetRamdomly;
//            for(i = 0; i < 7; i++ ) {
//                
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                
//                
//                
//                
//                int value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                
//                while(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    if(buttonTempCount>=N*N){
//                        break;
//                    }
//                    value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                    buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                    if(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                        buttonTempCount++;
//                    }
//                }
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                if(!buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    buttonToBeSetRamdomly.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                    
//                    //[self.buttonFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    //[self.buttonOnStartFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    [self.buttonFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    [self.buttonOnStartFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    //[self.view addSubview:buttonToBeSetRamdomly];
//                    startX = buttonToBeSetRamdomly.frame.origin.x + buttonToBeSetRamdomly.frame.size.width+horizontalGap;
//                    startY = buttonToBeSetRamdomly.frame.origin.y;
//                    
//                }
//                buttonTempCount++;
//            }
//            
//            if(j==0 && i == 7){
//                self.btn_facebook.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                
//            }
//            else if(j==1 && i == 7){
//                self.btn_twitter.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//            }
//            else if(j==2 && i == 7){
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                
//                
//                
//                
//                int value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                
//                while(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    if(buttonTempCount>=N*N){
//                        break;
//                    }
//                    value = [[self.buttonsShuffledList objectAtIndex:buttonTempCount] integerValue];
//                    buttonToBeSetRamdomly = (CustomButton *)[self.view viewWithTag:(value+200)];
//                    if(buttonToBeSetRamdomly.fixedBeforeGameStart){
//                        buttonTempCount++;
//                    }
//                }
//                if(buttonTempCount>=N*N){
//                    break;
//                }
//                
//                if(!buttonToBeSetRamdomly.fixedBeforeGameStart){
//                    buttonToBeSetRamdomly.frame = CGRectMake(startX, startY, fixedBoxWidth, fixedBoxHeight);
//                    
//                    //[self.buttonFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    //[self.buttonOnStartFramesList addObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    [self.buttonFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    [self.buttonOnStartFramesList replaceObjectAtIndex:value withObject:[NSValue valueWithCGRect:buttonToBeSetRamdomly.frame]];
//                    
//                    //[self.view addSubview:buttonToBeSetRamdomly];
//                    startX = buttonToBeSetRamdomly.frame.origin.x + buttonToBeSetRamdomly.frame.size.width+horizontalGap;
//                    startY = buttonToBeSetRamdomly.frame.origin.y;
//                    
//                }
//                buttonTempCount++;
//            }
//            startX = bound.size.width * 0.0125;//4;
//            startY = startY + buttonToBeSetRamdomly.frame.size.height+verticalGap;
//        }
//    }
//    ////////////////////////////
//    
//    
//    
//    
//    
//    
//    for(int z=0; z<totalRevealedLetters; z++)
//    {
//        Reveal_Letters *revealedLetterIndex = [self.revealedLettersArray objectAtIndex:z];
//        CustomButton *tmpButton;
//        if([revealedLetterIndex.type isEqualToString:@"-2"]){
//            int index = [revealedLetterIndex.index intValue];
//            tmpButton = [self.allButtons objectAtIndex:index];
//            
//            
//            
//            
//            [tmpButton MoveUp];
//            tmpButton.tagOfHiddenButton = index;
//            CGRect someRect = [[self.CustomViewsFramesList objectAtIndex:index] CGRectValue];
//            if(bound.size.height>568){
//                if(choicD==6){
//                    CGRect frame = someRect;
//                    frame.size.width=85;
//                    frame.size.height=81;
//                    someRect = frame;
//                }
//                else if(choicD==5){
//                    CGRect frame = someRect;
//                    frame.size.width=102;
//                    frame.size.height=96;
//                    someRect = frame;
//                }
//                else if(choicD==4){
//                    CGRect frame = someRect;
//                    frame.size.width=117;
//                    frame.size.height=118;
//                    someRect = frame;
//                }
//                else if(choicD==3){
//                    CGRect frame = someRect;
//                    frame.size.width=165.6;
//                    frame.size.height=154.783334;
//                    someRect = frame;
//                }
//            }
//            else if(bound.size.height<=568){
//                if(choicD==6){
//                    CGRect frame = someRect;
//                    frame.size.width=36;
//                    frame.size.height=37.67;
//                    someRect = frame;
//                }
//                else if(choicD==5){
//                    CGRect frame = someRect;
//                    frame.size.width=43.22;
//                    frame.size.height=44.65;
//                    someRect = frame;
//                }
//                else if(choicD==4){
//                    CGRect frame = someRect;
//                    frame.size.width=49.58;
//                    frame.size.height=54.88;
//                    someRect = frame;
//                }
//                else if(choicD==3){
//                    CGRect frame = someRect;
//                    frame.size.width=69;
//                    frame.size.height=74;
//                    someRect = frame;
//                }
//            }
//            [tmpButton setFrame:someRect];
//            Custom_View *mytemp = [self.CustomViewsList objectAtIndex:index];
//            [mytemp Fill];
//            mytemp.tagOfButtonOnTopOfMe = index;
//            mytemp.hidden = YES;
//            [self.movedButtons replaceObjectAtIndex:index withObject:tmpButton];
//            [self.allButtons replaceObjectAtIndex:index withObject:[NSNull null]];
//            [self.buttonFramesList replaceObjectAtIndex:index withObject:[NSValue valueWithCGRect:someRect]];
//        }
//        else{
//            int tagOfButtonPlacedByUser = [revealedLetterIndex.type intValue];
//            
//            tmpButton = (CustomButton*)[self.allButtons objectAtIndex:tagOfButtonPlacedByUser];
//            if ([tmpButton isKindOfClass:[NSNull class]]) {
//                continue;
//            }
//            [tmpButton MoveUp];
//            tmpButton.tagOfHiddenButton = [revealedLetterIndex.index intValue];
//            CGRect someRect = [[self.CustomViewsFramesList objectAtIndex:tmpButton.tagOfHiddenButton] CGRectValue];
//            if(bound.size.height>568){
//                if(choicD==6){
//                    CGRect frame = someRect;
//                    frame.size.width=85;
//                    frame.size.height=81;
//                    someRect = frame;
//                }
//                else if(choicD==5){
//                    CGRect frame = someRect;
//                    frame.size.width=102;
//                    frame.size.height=96;
//                    someRect = frame;
//                }
//                else if(choicD==4){
//                    CGRect frame = someRect;
//                    frame.size.width=117;
//                    frame.size.height=118;
//                    someRect = frame;
//                }
//                else if(choicD==3){
//                    CGRect frame = someRect;
//                    frame.size.width=165.6;
//                    frame.size.height=154.783334;
//                    someRect = frame;
//                }
//            }
//            else if(bound.size.height<=568){
//                if(choicD==6){
//                    CGRect frame = someRect;
//                    frame.size.width=36;
//                    frame.size.height=37.67;
//                    someRect = frame;
//                }
//                else if(choicD==5){
//                    CGRect frame = someRect;
//                    frame.size.width=43.22;
//                    frame.size.height=44.65;
//                    someRect = frame;
//                }
//                else if(choicD==4){
//                    CGRect frame = someRect;
//                    frame.size.width=49.58;
//                    frame.size.height=54.88;
//                    someRect = frame;
//                }
//                else if(choicD==3){
//                    CGRect frame = someRect;
//                    frame.size.width=69;
//                    frame.size.height=74;
//                    someRect = frame;
//                }
//            }
//            [tmpButton setFrame:someRect];
//            Custom_View *mytemp = [self.CustomViewsList objectAtIndex:tmpButton.tagOfHiddenButton];
//            [mytemp Fill];
//            mytemp.tagOfButtonOnTopOfMe = tagOfButtonPlacedByUser;
//            mytemp.hidden =YES;
//            
//            [self.movedButtons replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:tmpButton];
//            [self.allButtons replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:[NSNull null]];
//            [self.buttonFramesList replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:[NSValue valueWithCGRect:someRect]];
//            
//        }
//        
//        NSString *yes = @"YES";
//        if([revealedLetterIndex.isLocked isEqualToString:yes]){
//            [tmpButton LockIt];
//        }
//        
//    }
//    
//    
//    [self SelectIntial];
//    
//}
//
//-(NSString *)Encoded_String:(NSString *)String
//{
//    NSData *plainTextData = [NSData dataFromBase64String:String];
//    NSString *plainText = [[NSString alloc] initWithData:plainTextData encoding:NSUTF8StringEncoding];
//    return plainText;
//}
//
//
//
///*-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
// {
// if ([keyPath isEqualToString:@"wordsCompletedCount"] )
// {
// id newValue = [object valueForKeyPath:keyPath];
// if(newValue == (N+N)){
// 
// }
// }
// }*/
//
//-(void)movetoWin
//{
//    // navigate to win controller
//}
//
//-(void)setScreen_for_iphone5
//{
//    
//    
//    if(bound.size.height == 568 || bound.size.height == 548)
//    {
//        // it means iphone 5
//        
//        iphone5=YES;
//        
//        iphone5gridYfactor = 25;
//        CGRect frame = self.gridImageView.frame;
//        frame.origin.y+=iphone5gridYfactor;
//        self.gridImageView.frame = frame;
//        
//        //CGRect frame = self.keyboardImageView.frame;
//        //frame.origin.y+=50;
//        //self.keyboardImageView.frame = frame;
//        
//        
//        YforIphone5 = 0;
//        
//        
//    }
//    else{
//        iphone5gridYfactor = 0;
//        iphone5=NO;
//        YforIphone5 = 0;
//    }
//}
//#pragma mark - loading view methods
//- (void)viewDidLoad
//{
//    self.loginView = [[FBLoginView alloc] init];
//    self.loginView.frame = CGRectMake(-140, -650, 480, 128);
//    
//    self.loginView.delegate =self;
//    self.loginView.publishPermissions = @[@"publish_actions"];
//    self.loginView.defaultAudience = FBSessionDefaultAudienceFriends;
//    [self.view addSubview:self.loginView];
//    
//    
//    
//    
//    timerHowToPlayPause = false;
//    bound = [[UIScreen mainScreen] bounds];
//    if(bound.size.height>568){
//        levelFont = 40;
//        timerFont = 30;
//    }
//    else if(bound.size.height==568){
//        levelFont = 18;
//        timerFont = 12;
//    }
//    else if(bound.size.height<568){
//        levelFont = 18;
//        timerFont = 12;
//    }
//    
//    [self.label_level setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:levelFont]];
//    [self.label_hintCount setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:levelFont]];
//    
//    [self.minutesDisplay setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:timerFont]];
//    [self.secondsDisplay setFont:[UIFont fontWithName:@"GothamRounded-Medium" size:timerFont]];
//    
//    
//    [self setScreen_for_iphone5];
//    
//    
//    self.buttonFramesList = [[NSMutableArray alloc]init];
//    self.buttonOnStartFramesList = [[NSMutableArray alloc]init];
//    //self.buttonsList = [[NSMutableArray alloc]init];
//    self.CustomViewsList = [[NSMutableArray alloc]init];
//    self.CustomViewsFramesList = [[NSMutableArray alloc]init];
//    self.buttonsShuffledList = [[NSMutableArray alloc]init];
//    self.words_array=[[NSMutableArray alloc] init];
//    self.revealedLettersArray=[[NSMutableArray alloc] init];
//    self.letters = [[NSMutableArray alloc] init];
//    self.temporaryArray = [[NSMutableArray alloc]init];
//    self.allButtons = [[NSMutableArray alloc]init];
//    self.movedButtons = [[NSMutableArray alloc]init];
//    self.emptyBoxes = [[NSMutableArray alloc]init];
//    self.filledBoxes = [[NSMutableArray alloc]init];
//    
//    
//    self.temppp =[[CustomButton alloc] init];
//    
//    [self loadGame];
//    
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(winConditionCheck) name:@"animationComplete" object:nil];
//    //[[NSNotificationCenter defaultCenter] postNotificationName:@"animationComplete" object:nil];
//    
//    if(choice==0){
//        self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option0];
//        self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option0];
//    }
//    else if(choice ==1){
//        self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option1];
//        self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option1];
//    }
//    else if(choice ==2){
//        self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option2];
//        self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option2];
//    }
//    else if(choice ==3){
//        self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option3];
//        self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option3];
//    }
//    else if(choice ==4){
//        self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option4];
//        self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option4];
//    }
//    else if(choice ==5){
//        self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option5];
//        self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option5];
//    }
//    else if(choice ==6){
//        self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option6];
//        self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option6];
//    }
//    else if(choice ==7){
//        self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option7];
//        self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option7];
//    }
//    
//    //[self.secondsDisplay setFont:[UIFont fontWithName:@"GothamRnd-Bold" size:16]];
//    self.secondsDisplay.text = [NSString stringWithFormat:@":%02d", self.seconds];
//    self.minutesDisplay.text = [NSString stringWithFormat:@"%02d", self.minutes];
//    
//    self.purpleStar.hidden = NO;
//    self.blueStar.hidden = NO;
//    self.greenStar.hidden = NO;
//    
//    int timeCalculatedInSeconds = (self.minutes*60)+self.seconds;
//    
//    if(timeCalculatedInSeconds >= thresholdToRemoveStarFirstTime && timeCalculatedInSeconds < thresholdToRemoveStarSecondTime){
//        self.purpleStar.hidden = YES;
//    }
//    else if(timeCalculatedInSeconds >= thresholdToRemoveStarSecondTime){
//        self.purpleStar.hidden = YES;
//        self.blueStar.hidden = YES;
//    }
//    else{
//        self.purpleStar.hidden = NO;
//        self.blueStar.hidden = NO;
//        self.greenStar.hidden = NO;
//    }
//    
//    /*if(self.seconds < 10){
//     self.secondsDisplay.text = [NSString stringWithFormat:@":0%d", self.seconds];
//     }
//     else{
//     self.secondsDisplay.text = [NSString stringWithFormat:@":%d", self.seconds];
//     }
//     self.minutesDisplay.text = [NSString stringWithFormat:@"%d", self.minutes];*/
//    
//    
//    [super viewDidLoad];
//    
//    
//    
//    
//    isAppearingFirstTime = true;
//    
//    if([[DataManager DataManagerSharedInstance] Is_First_Time] && choice == 0){
//        [[DataManager DataManagerSharedInstance] Set_First_Time];
//        if(bound.size.height>568){
//            timerHowToPlayPause = true;
//            UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
//            [invisibleButton addTarget:self
//                                action:@selector(removeHowToPlay:)
//                      forControlEvents:UIControlEventTouchDown];
//            invisibleButton.frame = CGRectMake(0, 0, 768, 1024);
//            [self.view addSubview:invisibleButton];
//            
//            
//            NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"how-to-play_ipad@2x" ofType:@"jpg"];
//            
//            self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-1024,768,1024)];
//            self.img.image=[UIImage imageWithContentsOfFile:imagePath];
//            [self.view addSubview:self.img];
//            
//            [self.view bringSubviewToFront:self.img];
//            
//            CGRect downwards = CGRectMake(0, 0, 768, 1024);
//            
//            [UIView animateWithDuration:0.5f
//                                  delay:0.5f
//                                options: UIViewAnimationOptionCurveLinear
//                             animations:^{
//                                 [self.img setFrame:downwards];
//                             }
//                             completion:nil];
//            
//            [self.view bringSubviewToFront:invisibleButton];
//        }
//        else if(bound.size.height==568){
//            timerHowToPlayPause = true;
//            UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
//            [invisibleButton addTarget:self
//                                action:@selector(removeHowToPlay:)
//                      forControlEvents:UIControlEventTouchDown];
//            invisibleButton.frame = CGRectMake(0, 0, 320, 568);
//            [self.view addSubview:invisibleButton];
//            
//            
//            NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"how-to-play_ip5@2x" ofType:@"jpg"];
//            
//            self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-568,320,568)];
//            self.img.image=[UIImage imageWithContentsOfFile:imagePath];
//            [self.view addSubview:self.img];
//            
//            [self.view bringSubviewToFront:self.img];
//            
//            CGRect downwards = CGRectMake(0, 0, 320, 568);
//            
//            [UIView animateWithDuration:0.5f
//                                  delay:0.5f
//                                options: UIViewAnimationOptionCurveLinear
//                             animations:^{
//                                 [self.img setFrame:downwards];
//                             }
//                             completion:nil];
//            
//            [self.view bringSubviewToFront:invisibleButton];
//        }
//        else if(bound.size.height<568){
//            timerHowToPlayPause = true;
//            UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
//            [invisibleButton addTarget:self
//                                action:@selector(removeHowToPlay:)
//                      forControlEvents:UIControlEventTouchDown];
//            invisibleButton.frame = CGRectMake(0, 0, 320, 480);
//            [self.view addSubview:invisibleButton];
//            
//            
//            NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"how-to-play_ip4@2x" ofType:@"jpg"];
//            
//            self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-568,320,480)];
//            self.img.image=[UIImage imageWithContentsOfFile:imagePath];
//            [self.view addSubview:self.img];
//            
//            [self.view bringSubviewToFront:self.img];
//            
//            CGRect downwards = CGRectMake(0, 0, 320, 480);
//            
//            [UIView animateWithDuration:0.5f
//                                  delay:0.5f
//                                options: UIViewAnimationOptionCurveLinear
//                             animations:^{
//                                 [self.img setFrame:downwards];
//                             }
//                             completion:nil];
//            
//            [self.view bringSubviewToFront:invisibleButton];
//        }
//        
//        
//    }
//    
//    
//}
//
////-(void)viewWillAppear:(BOOL)animated
////{
////    [super viewWillAppear:YES];
////
////    //[self loadGame];
////
////}
//
//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:YES];
//    int hintCount = [[DataManager DataManagerSharedInstance] Get_Hint_count];
//    NSString *strFromInt = [NSString stringWithFormat:@"%d",hintCount];
//    self.label_hintCount.text = strFromInt;
//}
//
//
//- (void)viewDidAppear:(BOOL)animated
//{
//    if(levelID == 2){
//        isCurrentLevelModeOfFive = true;
//    }
//    else if((levelID-2)%5 == 0){
//        isCurrentLevelModeOfFive = true;
//    }
//    else{
//        isCurrentLevelModeOfFive = false;
//    }
//    
//    
//    self.view.userInteractionEnabled = YES;
//    
//    /*  int timeCalculatedInSeconds = (self.minutes*60)+self.seconds;
//     
//     if(timeCalculatedInSeconds >= thresholdToRemoveStarFirstTime && timeCalculatedInSeconds < thresholdToRemoveStarSecondTime){
//     purpleStar.hidden = YES;
//     }
//     else if(timeCalculatedInSeconds >= thresholdToRemoveStarSecondTime){
//     purpleStar.hidden = YES;
//     blueStar.hidden = YES;
//     }
//     else{
//     purpleStar.hidden = NO;
//     blueStar.hidden = NO;
//     greenStar.hidden = NO;
//     }*/
//    
//    [super viewDidAppear:YES];
//    
//    if(![[DataManager DataManagerSharedInstance] Is_AdFree])
//    {
//        if([[DataManager DataManagerSharedInstance] Is_Lower_Device]){
//            
//        }
//        else{
//            [[DataManager DataManagerSharedInstance] load_AdMob_Ad];
//        }
//    }
//    
//    
//    
//    //[self loadGame];
//    
//    if(isAppearingFirstTime){
//        timerPause = false;
//        
//        
//        //self.seconds = 0;
//        //self.minutes = 0;
//        /* if(choice==0){
//         self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option0];
//         self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option0];
//         }
//         else if(choice ==1){
//         self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option1];
//         self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option1];
//         }
//         else if(choice ==2){
//         self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option2];
//         self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option2];
//         }
//         else if(choice ==3){
//         self.seconds = [[DataManager DataManagerSharedInstance] Get_Seconds_Option3];
//         self.minutes = [[DataManager DataManagerSharedInstance] Get_Minutes_Option3];
//         }
//         NSLog(@"SEC: %i",self.seconds);
//         NSLog(@"MIN: %i",self.minutes);
//         
//         //self.secondsDisplay.text = [NSString stringWithFormat:@"%d", self.seconds];
//         //self.minutesDisplay.text = [NSString stringWithFormat:@"%d", self.minutes];*/
//        
//        self.secondsTimer = [NSTimer
//                             scheduledTimerWithTimeInterval:1.0
//                             target:self
//                             selector:@selector(timerFireMethod:)
//                             userInfo:nil
//                             repeats:YES];
//        
//        isAppearingFirstTime = false;
//    }
//    else{
//        timerPause = false;
//        /*self.seconds = 0;
//         self.minutes = 0;
//         if(choice==0){
//         [[DataManager DataManagerSharedInstance] Set_Seconds_Option0:self.seconds];
//         [[DataManager DataManagerSharedInstance] Set_Minutes_Option0:self.minutes];
//         }
//         else if(choice ==1){
//         [[DataManager DataManagerSharedInstance] Set_Seconds_Option1:self.seconds];
//         [[DataManager DataManagerSharedInstance] Set_Minutes_Option1:self.minutes];
//         }
//         else if(choice ==2){
//         [[DataManager DataManagerSharedInstance] Set_Seconds_Option2:self.seconds];
//         [[DataManager DataManagerSharedInstance] Set_Minutes_Option2:self.minutes];
//         }
//         else if(choice ==3){
//         [[DataManager DataManagerSharedInstance] Set_Seconds_Option3:self.seconds];
//         [[DataManager DataManagerSharedInstance] Set_Minutes_Option3:self.minutes];
//         }*/
//        
//        /*if(self.seconds < 10){
//         self.secondsDisplay.text = [NSString stringWithFormat:@":0%d", self.seconds];
//         }
//         else{
//         self.secondsDisplay.text = [NSString stringWithFormat:@":%d", self.seconds];
//         }
//         self.minutesDisplay.text = [NSString stringWithFormat:@"%d", self.minutes];
//         
//         
//         [self loadGame];*/
//        
//        self.secondsTimer = [NSTimer
//                             scheduledTimerWithTimeInterval:1.0
//                             target:self
//                             selector:@selector(timerFireMethod:)
//                             userInfo:nil
//                             repeats:YES];
//    }
//}
//
//-(void)SelectIntial
//{
//    Custom_View * view;
//    for(int i=0;i<self.myCount;i++)
//    {
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(!view.isFilled)
//        {
//            [view unSelect];
//        }
//    }
//    for(int i=0;i<self.myCount;i++)
//    {
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(!view.isFilled)
//        {
//            tagOfCurrentSelection = i;
//            [view Select];
//            break;
//        }
//    }
//}
//
//-(void)pickNewSelection:(CustomButton *)alphabetButton
//{
//    tagOfCurrentSelection = alphabetButton.tagOfHiddenButton;
//    Custom_View * view;
//    for(int i=0;i<self.myCount;i++)
//    {
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(alphabetButton.tagOfHiddenButton!=i)
//        {
//            [view unSelect];
//        }
//    }
//    Boolean check = true;
//    for(int i=tagOfCurrentSelection+1; i<self.myCount; i++){
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(view.tagOfButtonOnTopOfMe==-1){
//            tagOfCurrentSelection = i;
//            [view Select];
//            view.hidden = NO;
//            check = false;
//            break;
//        }
//    }
//    if(check){
//        for(int i=tagOfCurrentSelection-1; i>=0; i--){
//            view=[self.CustomViewsList objectAtIndex:i];
//            if(view.tagOfButtonOnTopOfMe==-1){
//                tagOfCurrentSelection = i;
//                [view Select];
//                view.hidden = NO;
//                break;
//            }
//        }
//    }
//}
//
//-(void)SaveNotLockedRevealedLetterAtIndex: (int)i itsOwnTag:(int)buttonTag
//{
//    NSArray *myArray = [self.levelObj.revealed_letters_list allObjects];
//    bool letterIndexAlreadyAvailable = false;
//    for(int j=0; j<myArray.count;j++){
//        Reveal_Letters *myObject = [myArray objectAtIndex:j];
//        NSString *thisI = [NSString stringWithFormat:@"%d",i];
//        
//        if([myObject.index isEqualToString: thisI]){
//            letterIndexAlreadyAvailable = true;
//            break;
//        }
//        
//    }
//    
//    if(!letterIndexAlreadyAvailable){
//        Reveal_Letters *Letterobj = [NSEntityDescription
//                                     insertNewObjectForEntityForName:@"Reveal_Letters"
//                                     inManagedObjectContext:[[DataManager DataManagerSharedInstance] managedObjectContext]];
//        NSString *strFromInt = [NSString stringWithFormat:@"%d",i];
//        Letterobj.index=strFromInt;
//        Letterobj.isLocked=@"NO";
//        NSString *thisButtonTag = [NSString stringWithFormat:@"%d",buttonTag];
//        Letterobj.type=thisButtonTag;
//        //[self.levelObj removeRevealed_letters_listObject:Nil];
//        [self.levelObj addRevealed_letters_listObject:Letterobj];
//        [[DataManager DataManagerSharedInstance] saveMyContext];
//    }
//}
//
//-(void)SaveRevealedLetterAtIndex: (int)i :(CustomButton *)disbutton
//{
//    NSArray *myArray = [self.levelObj.revealed_letters_list allObjects];
//    bool letterIndexAlreadyAvailable = false;
//    for(int j=0; j<myArray.count;j++){
//        Reveal_Letters *myObject = [myArray objectAtIndex:j];
//        NSString *thisI = [NSString stringWithFormat:@"%d",i];
//        
//        if([myObject.index isEqualToString: thisI]){
//            letterIndexAlreadyAvailable = true;
//            if(letterIndexAlreadyAvailable && disbutton.canBeMoved==false && [myObject.isLocked isEqualToString:@"NO"]){
//                Reveal_Letters *myNewObject = [NSEntityDescription
//                                               insertNewObjectForEntityForName:@"Reveal_Letters"
//                                               inManagedObjectContext:[[DataManager DataManagerSharedInstance] managedObjectContext]];
//                myNewObject.index = thisI;
//                
//                myNewObject.isLocked = @"YES";
//                NSString *thisButtonTag = [NSString stringWithFormat:@"%d",(disbutton.tag-200)];
//                myNewObject.type = thisButtonTag;
//                [self.levelObj removeRevealed_letters_listObject:myObject];
//                [self.levelObj addRevealed_letters_listObject:myNewObject];
//                [[DataManager DataManagerSharedInstance] saveMyContext];
//            }
//            break;
//        }
//        
//    }
//    
//    if(!letterIndexAlreadyAvailable){
//        Reveal_Letters *Letterobj = [NSEntityDescription
//                                     insertNewObjectForEntityForName:@"Reveal_Letters"
//                                     inManagedObjectContext:[[DataManager DataManagerSharedInstance] managedObjectContext]];
//        NSString *strFromInt = [NSString stringWithFormat:@"%d",i];
//        Letterobj.index=strFromInt;
//        Letterobj.isLocked=@"YES";
//        NSString *thisButtonTag = [NSString stringWithFormat:@"%d",(disbutton.tag-200)];
//        Letterobj.type=thisButtonTag;
//        [self.levelObj addRevealed_letters_listObject:Letterobj];
//        [[DataManager DataManagerSharedInstance] saveMyContext];
//    }
//}
//
//-(void)DeleteRevealedLetterAtIndex: (int)i
//{
//    NSArray *myArray = [self.levelObj.revealed_letters_list allObjects];
//    bool letterIndexAlreadyAvailable = false;
//    for(int j=0; j<myArray.count;j++){
//        Reveal_Letters *myObject = [myArray objectAtIndex:j];
//        NSString *thisI = [NSString stringWithFormat:@"%d",i];
//        
//        if([myObject.index isEqualToString: thisI] && [myObject.isLocked isEqualToString:@"NO"]){
//            letterIndexAlreadyAvailable = true;
//            
//            [self.levelObj removeRevealed_letters_listObject:myObject];
//            
//            [[[DataManager DataManagerSharedInstance] managedObjectContext] deleteObject:myObject];
//            
//            //[[DataManager DataManagerSharedInstance] saveMyContext];
//
//
//            break;
//        }
//    }
//    
//    self.levelObj=[[DataManager DataManagerSharedInstance] LoadLevelWithID:[self.pack_dic objectForKey:@"current_level_id"]];
//    NSArray *myArray2 = [self.levelObj.revealed_letters_list allObjects];
//}
//
//
//-(void)comparingInterlinkedRowsAndColumns: (int)linkerIndex
//{
//    bool caseTop = true;
//    bool caseDown = true;
//    bool caseLeft = true;
//    bool caseRight = true;
//    NSString *stringA;
//    NSString *stringB;
//    
//    Custom_View * view;
//    CustomButton *buttonBeingChecked;
//    //CHECKING TOP CHARACTERS
//    for(int i=linkerIndex-N; i>=0 && i<(N*N); i=i-N){
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(view.tagOfButtonOnTopOfMe!=-1){
//            if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]==[NSNull null]){
//                caseTop = false;
//                break;
//            }
//        }
//        else{
//            caseTop = false;
//            break;
//        }
//        buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//        stringA = buttonBeingChecked.myText;
//        stringB = [self.letters objectAtIndex:i];
//        if(view.isFilled && ([stringA isEqualToString: stringB])){
//            //FINE
//        }
//        else{
//            caseTop = false;
//            break;
//        }
//    }
//    //CHECKING DOWN CHARACTERS
//    for(int i=linkerIndex+N; i>=0 && i<(N*N); i=i+N){
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(view.tagOfButtonOnTopOfMe!=-1){
//            if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]==[NSNull null]){
//                caseDown = false;
//                break;
//            }
//        }
//        else{
//            caseDown = false;
//            break;
//        }
//        buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//        stringA = buttonBeingChecked.myText;
//        stringB = [self.letters objectAtIndex:i];
//        if(view.isFilled && ([stringA isEqualToString: stringB])){
//            //FINE
//        }
//        else{
//            caseDown = false;
//            break;
//        }
//    }
//    int x=linkerIndex/N;
//    //CHECKING LEFT CHARACTERS
//    for(int i=linkerIndex-1; i>=0 && i<(N*N) && x==i/N; i--){
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(view.tagOfButtonOnTopOfMe!=-1){
//            if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]==[NSNull null]){
//                caseLeft = false;
//                break;
//            }
//        }
//        else{
//            caseLeft = false;
//            break;
//        }
//        buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//        stringA = buttonBeingChecked.myText;
//        stringB = [self.letters objectAtIndex:i];
//        if(view.isFilled && ([stringA isEqualToString: stringB])){
//            //FINE
//        }
//        else{
//            caseLeft = false;
//            break;
//        }
//    }
//    
//    //CHECKING RIGHT CHARACTERS
//    for(int i=linkerIndex+1; i>=0 && i<(N*N) && x==i/N; i++){
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(view.tagOfButtonOnTopOfMe!=-1){
//            if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]==[NSNull null]){
//                caseRight = false;
//                break;
//            }
//        }
//        else{
//            caseRight = false;
//            break;
//        }
//        buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//        stringA = buttonBeingChecked.myText;
//        stringB = [self.letters objectAtIndex:i];
//        if(view.isFilled && ([stringA isEqualToString: stringB])){
//            //FINE
//        }
//        else{
//            caseRight = false;
//            break;
//        }
//    }
//    
//    
//    if(caseTop && caseDown){
//        //LOCKING TOP CHARACTERS
//        for(int i=linkerIndex; i>=0 && i<(N*N); i=i-N){
//            view=[self.CustomViewsList objectAtIndex:i];
//            if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]!=[NSNull null]){
//                buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//                [buttonBeingChecked LockIt];
//                
//                [self SaveRevealedLetterAtIndex:i :buttonBeingChecked];
//            }
//        }
//        //LOCKING DOWN CHARACTERS
//        for(int i=linkerIndex+N; i>=0 && i<(N*N); i=i+N){
//            view=[self.CustomViewsList objectAtIndex:i];
//            if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]!=[NSNull null]){
//                buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//                [buttonBeingChecked LockIt];
//                [self SaveRevealedLetterAtIndex:i :buttonBeingChecked];
//            }
//        }
//        
//    }
//    
//    if(caseLeft && caseRight){
//        //LOCKING LEFT CHARACTERS
//        for(int i=linkerIndex; i>=0 && i<(N*N) && x==i/N; i--){
//            view=[self.CustomViewsList objectAtIndex:i];
//            if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]!=[NSNull null]){
//                buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//                [buttonBeingChecked LockIt];
//                
//                [self SaveRevealedLetterAtIndex:i :buttonBeingChecked];
//            }
//        }
//        //LOCKING RIGHT CHARACTERS
//        for(int i=linkerIndex+1; i>=0 && i<(N*N) && x==i/N; i++){
//            view=[self.CustomViewsList objectAtIndex:i];
//            if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]!=[NSNull null]){
//                buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//                [buttonBeingChecked LockIt];
//                [self SaveRevealedLetterAtIndex:i :buttonBeingChecked];
//            }
//        }
//        
//    }
//    
//    forTheFirstTime = true;
//    [self alphabetJumpTopToDown:linkerIndex :caseTop :caseDown :caseLeft :caseRight :x];
//    
//    /*if(forTheFirstTime){
//     [self alphabetJumpLeftToRight:linkerIndex inRow:x :(bool)caseLeft :(bool)caseRight];
//     }*/
//}
//
//-(void)alphabetJumpTopToDown: (int)linkerIndex :(bool)caseTop :(bool)caseDown :(bool)caseLeft :(bool)caseRight :(int)x
//{
//    if(caseTop && caseDown){
//        self.view.userInteractionEnabled = NO;
//        int startIndex = linkerIndex;
//        while(startIndex>=0){
//            startIndex = startIndex-N;
//        }
//        startIndex = startIndex+N;
//        
//        int i = startIndex;
//        if(i<(N*N))
//        {
//            //[self playSound];
//            
//            double delayInSeconds = 0.1;
//            dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//            dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//                [self methodZeroWithLoopIndex:i :caseLeft :caseRight :linkerIndex :x];
//            });
//        }
//    }
//    else
//    {
//        [self alphabetJumpLeftToRight:linkerIndex inRow:x :(bool)caseLeft :(bool)caseRight];
//    }
//    /*for(int i = startIndex; i<(N*N);i=i+N){
//     Custom_View* view=[self.CustomViewsList objectAtIndex:i];
//     if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]!=[NSNull null]){
//     CustomButton* buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//     [buttonBeingChecked AnimateJump];
//     }
//     }*/
//    
//}
//-(void)playSound
//{
//    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"success_playful_11_48k" ofType: @"wav"];
//    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
//    _myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
//    _myAudioPlayer.numberOfLoops=0;
//    [_myAudioPlayer play];
//}
//-(void)methodZeroWithLoopIndex:(int)i :(bool)caseLeft :(bool)caseRight :(int)linkerIndex :(int)x
//{
//    Custom_View* view=[self.CustomViewsList objectAtIndex:i];
//    if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]!=[NSNull null]){
//        CustomButton* buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//        if(bound.size.height>568){
//            [buttonBeingChecked AnimateJump:22];
//        }
//        else{
//            [buttonBeingChecked AnimateJump:0];
//        }
//    }
//    i=i+N;
//    if(i<(N*N)){
//        double delayInSeconds = 0.1;
//        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//            [self methodZeroWithLoopIndex:i :caseLeft :caseRight :linkerIndex :x];
//        });
//    }
//    else{
//        [self alphabetJumpLeftToRight:linkerIndex inRow:x :caseLeft :caseRight];
//    }
//}
//
//-(void)alphabetJumpLeftToRight: (int)linkerIndex inRow: (int)R :(bool)caseLeft :(bool)caseRight
//{
//    if(caseLeft && caseRight){
//        self.view.userInteractionEnabled = NO;
//        forTheFirstTime = false;
//        int startIndex = linkerIndex;
//        while(startIndex>=0 && (startIndex/N)==R){
//            startIndex--;
//        }
//        startIndex++;
//        int i = startIndex;
//        if((i/N)==R)
//        {
//            //[self playSound];
//            double delayInSeconds = 0.1;
//            dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//            dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//                [self methodOneWithLoopIndex:i forRow:R];
//            });
//        }
//    }
//    else{
//        self.view.userInteractionEnabled = YES;
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"animationComplete" object:nil];
//    }
//    
//    /* for(int i = startIndex; (i/N)==R;i++){
//     Custom_View* view=[self.CustomViewsList objectAtIndex:i];
//     if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]!=[NSNull null]){
//     CustomButton* buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//     [buttonBeingChecked AnimateJump];
//     }
//     }*/
//    
//}
//
//-(void)methodOneWithLoopIndex: (int)i forRow: (int)R
//{
//    Custom_View* view=[self.CustomViewsList objectAtIndex:i];
//    if([self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe]!=[NSNull null]){
//        CustomButton* buttonBeingChecked = [self.movedButtons objectAtIndex:view.tagOfButtonOnTopOfMe];
//        
//        if(bound.size.height>568){
//            [buttonBeingChecked AnimateJump:22];
//        }
//        else
//        {
//            [buttonBeingChecked AnimateJump:0];
//        }
//    }
//    i++;
//    if((i/N)==R){
//        double delayInSeconds = 0.1;
//        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
//        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//            [self methodOneWithLoopIndex:i forRow:R];
//        });
//    }
//    else{
//        self.view.userInteractionEnabled = YES;
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"animationComplete" object:nil];
//    }
//}
//
//#pragma mark - Buttons action methods
//
//-(IBAction)removeHowToPlay:(id)sender{
//    
//    if(bound.size.height>568){
//        UIButton* btn = (UIButton*)sender;
//        CGRect downwards = CGRectMake(0,-1024,768,1004);
//        [UIView animateWithDuration:0.5f
//                              delay:0.0f
//                            options: UIViewAnimationOptionCurveLinear
//                         animations:^{
//                             [self.img setFrame:downwards];
//                         }
//                         completion:nil];
//        
//        [self.view sendSubviewToBack:btn];
//        timerHowToPlayPause = false;
//    }
//    else if(bound.size.height==568){
//        UIButton* btn = (UIButton*)sender;
//        CGRect downwards = CGRectMake(0,-568,320,568);
//        [UIView animateWithDuration:0.5f
//                              delay:0.0f
//                            options: UIViewAnimationOptionCurveLinear
//                         animations:^{
//                             [self.img setFrame:downwards];
//                         }
//                         completion:nil];
//        
//        [self.view sendSubviewToBack:btn];
//        timerHowToPlayPause = false;
//    }
//    else if(bound.size.height<568){
//        UIButton* btn = (UIButton*)sender;
//        CGRect downwards = CGRectMake(0,-480,320,480);
//        [UIView animateWithDuration:0.5f
//                              delay:0.0f
//                            options: UIViewAnimationOptionCurveLinear
//                         animations:^{
//                             [self.img setFrame:downwards];
//                         }
//                         completion:nil];
//        
//        [self.view sendSubviewToBack:btn];
//        timerHowToPlayPause = false;
//    }
//
//}
//-(IBAction)alphabetClicked:(id)sender{
//    CustomButton * alphabetButton=(CustomButton*)sender;
//    int tagOfThisButton = alphabetButton.tag-200;
//    if(alphabetButton.canBeMoved && (!alphabetButton.isMoved)){
//        //////BUTTON MOVED UP///////
//        [alphabetButton MoveUp];
//        
//        alphabetButton.tagOfHiddenButton = tagOfCurrentSelection;
//        [self SaveNotLockedRevealedLetterAtIndex:alphabetButton.tagOfHiddenButton itsOwnTag:tagOfThisButton];
//        CGRect someRect = [[self.CustomViewsFramesList objectAtIndex:tagOfCurrentSelection] CGRectValue];
//        if(bound.size.height>568){
//            if(choicD==6){
//                CGRect frame = someRect;
//                frame.size.width=85;
//                frame.size.height=81;
//                someRect = frame;
//            }
//            else if(choicD==5){
//                CGRect frame = someRect;
//                frame.size.width=102;
//                frame.size.height=96;
//                someRect = frame;
//            }
//            else if(choicD==4){
//                CGRect frame = someRect;
//                frame.size.width=117;
//                frame.size.height=118;
//                someRect = frame;
//            }
//            else if(choicD==3){
//                CGRect frame = someRect;
//                frame.size.width=165.6;
//                frame.size.height=154.783334;
//                someRect = frame;
//            }
//        }
//        else if(bound.size.height<=568){
//            if(choicD==6){
//                CGRect frame = someRect;
//                frame.size.width=36;
//                frame.size.height=37.67;
//                someRect = frame;
//            }
//            else if(choicD==5){
//                CGRect frame = someRect;
//                frame.size.width=43.22;
//                frame.size.height=44.65;
//                someRect = frame;
//            }
//            else if(choicD==4){
//                CGRect frame = someRect;
//                frame.size.width=49.58;
//                frame.size.height=54.88;
//                someRect = frame;
//            }
//            else if(choicD==3){
//                CGRect frame = someRect;
//                frame.size.width=69;
//                frame.size.height=74;
//                someRect = frame;
//            }
//        }
//        [UIView animateWithDuration:0.1f
//                              delay:0.0f
//                            options: UIViewAnimationOptionCurveLinear
//                         animations:^{
//                             [alphabetButton setFrame:someRect];
//                         }
//                         completion:nil];
//        ////////////////////////////
//        
//        
//        ////////PARTICULAR GRID BOX GETTING FILLED AND HIDDEN///////////////
//        Custom_View *mytemp = [self.CustomViewsList objectAtIndex:tagOfCurrentSelection];
//        [mytemp Fill];
//        mytemp.tagOfButtonOnTopOfMe = tagOfThisButton;
//        mytemp.hidden = YES;
//        ///////////////////////////////////////////////////////////////////
//        
//        //////BUTTON ARRAYS UPDATED///////////
//        [self.movedButtons replaceObjectAtIndex:tagOfThisButton withObject:alphabetButton];
//        [self.allButtons replaceObjectAtIndex:tagOfThisButton withObject:[NSNull null]];
//        [self.buttonFramesList replaceObjectAtIndex:tagOfThisButton withObject:[NSValue valueWithCGRect:someRect]];
//        //////////////////////////////////////
//        
//        
//        
//        //////////COMPARING INTERLINKED ROW AND COLUMN///////////
//        NSString * stringA = alphabetButton.myTitleValue;
//        NSString * stringB = [self.letters objectAtIndex:tagOfCurrentSelection];
//        if([stringA isEqualToString: stringB]){
//            int linkerIndex = tagOfCurrentSelection;
//            [self comparingInterlinkedRowsAndColumns: linkerIndex];
//        }
//        //////////////////////////////////////////////////////////
//        
//        
//        
//        
//        //////PICKING NEW SELECTION //////
//        [self pickNewSelection:alphabetButton];
//        ////////////////////////
//    }
//    else if(alphabetButton.canBeMoved && (alphabetButton.isMoved)){
//        //////BUTTON MOVED DOWN///////
//        [alphabetButton MoveDown];
//        [self DeleteRevealedLetterAtIndex:alphabetButton.tagOfHiddenButton];
//        CGRect newFrame = [[self.buttonOnStartFramesList objectAtIndex:tagOfThisButton] CGRectValue];
//        
//        [UIView animateWithDuration:0.1f
//                              delay:0.0f
//                            options: UIViewAnimationOptionCurveLinear
//                         animations:^{
//                             [alphabetButton setFrame:newFrame];
//                         }
//                         completion:nil];
//        ///////////////////////////////
//        
//        ////////PARTICULAR GRID BOX GETTING UN-FILLED AND VISIBLE AND SELECTED///////////////
//        Custom_View *mytemp = [self.CustomViewsList objectAtIndex:alphabetButton.tagOfHiddenButton];
//        [mytemp unFill];
//        [mytemp Select];
//        tagOfCurrentSelection = alphabetButton.tagOfHiddenButton;
//        mytemp.hidden = NO;
//        ///////////////////////////////////////////////////////////////////////
//        
//        
//        ///////ALL OTHER GRID BOXES GETTING UN-SELECTED///////
//        Custom_View * view;
//        for(int i=0;i<self.myCount;i++)
//        {
//            view=[self.CustomViewsList objectAtIndex:i];
//            if(alphabetButton.tagOfHiddenButton!=i)
//            {
//                [view unSelect];
//            }
//        }
//        //////////////////////////////////////////////////////
//        alphabetButton.tagOfHiddenButton=-1;
//        
//        
//        
//        ////////////BUTTON ARRAYS UPDATED////////////////
//        [self.movedButtons replaceObjectAtIndex:tagOfThisButton withObject:[NSNull null]];
//        [self.allButtons replaceObjectAtIndex:tagOfThisButton withObject:alphabetButton];
//        //////////////////////////////////////////////////
//    }
//    
//    //////CHECKING IF LEVEL HAS FINISHED OR NOT //////
//    //[self winConditionCheck];
//    //[self performSelector:@selector(winConditionCheck) withObject:nil afterDelay:1.0 ];
//    /////////////////////////////////////////////////
//}
//
//- (IBAction)btnInfo:(id)sender {
//    if(bound.size.height>568){
//        UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [invisibleButton addTarget:self
//                            action:@selector(removeHowToPlay:)
//                  forControlEvents:UIControlEventTouchDown];
//        invisibleButton.frame = CGRectMake(0, 0, 768, 1024);
//        [self.view addSubview:invisibleButton];
//        
//        self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-1024,768,1024)];
//        self.img.image=[UIImage imageNamed:@"how-to-play_ipad.jpg"];
//        [self.view addSubview:self.img];
//        
//        [self.view bringSubviewToFront:self.img];
//        
//        CGRect downwards = CGRectMake(0, 0, 768, 1024);
//        
//        [UIView animateWithDuration:0.5f
//                              delay:0.0f
//                            options: UIViewAnimationOptionCurveLinear
//                         animations:^{
//                             [self.img setFrame:downwards];
//                         }
//                         completion:nil];
//        
//        [self.view bringSubviewToFront:invisibleButton];
//    }
//    else if(bound.size.height==568){
//        UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [invisibleButton addTarget:self
//                            action:@selector(removeHowToPlay:)
//                  forControlEvents:UIControlEventTouchDown];
//        invisibleButton.frame = CGRectMake(0, 0, 320, 568);
//        [self.view addSubview:invisibleButton];
//        
//        self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-568,320,568)];
//        self.img.image=[UIImage imageNamed:@"how-to-play_ip5.jpg"];
//        [self.view addSubview:self.img];
//        
//        [self.view bringSubviewToFront:self.img];
//        
//        CGRect downwards = CGRectMake(0, 0, 320, 568);
//        
//        [UIView animateWithDuration:0.5f
//                              delay:0.0f
//                            options: UIViewAnimationOptionCurveLinear
//                         animations:^{
//                             [self.img setFrame:downwards];
//                         }
//                         completion:nil];
//        
//        [self.view bringSubviewToFront:invisibleButton];
//    }
//    else if(bound.size.height<568){
//        UIButton *invisibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [invisibleButton addTarget:self
//                            action:@selector(removeHowToPlay:)
//                  forControlEvents:UIControlEventTouchDown];
//        invisibleButton.frame = CGRectMake(0, 0, 320, 480);
//        [self.view addSubview:invisibleButton];
//        
//        self.img=[[UIImageView alloc] initWithFrame:CGRectMake(0,-568,320,480)];
//        self.img.image=[UIImage imageNamed:@"how-to-play_ip4.jpg"];
//        [self.view addSubview:self.img];
//        
//        [self.view bringSubviewToFront:self.img];
//        
//        CGRect downwards = CGRectMake(0, 0, 320, 480);
//        
//        [UIView animateWithDuration:0.5f
//                              delay:0.0f
//                            options: UIViewAnimationOptionCurveLinear
//                         animations:^{
//                             [self.img setFrame:downwards];
//                         }
//                         completion:nil];
//        
//        [self.view bringSubviewToFront:invisibleButton];
//    }
//}
//
//
//
//-(IBAction)goToPreviousPage:(id)sender{
//   // [[DataManager DataManagerSharedInstance] saveMyContext];
//
//    if([self.myDelegate respondsToSelector:@selector(setCaseNumber:)])
//    {
//        [self.myDelegate setCaseNumber:1];
//    }
//    
//    //if(ads ane hain)
//    {
//        [[DataManager DataManagerSharedInstance] stop_loading_ads];
//    }
//    
//    
//    [[DataManager DataManagerSharedInstance] Set_PackButtonSelected:-1];
//    
//    [self.secondsTimer invalidate];
//    [NSObject cancelPreviousPerformRequestsWithTarget:self];
//    [[NSNotificationCenter defaultCenter] removeObserver:self];
//    [self.navigationController popViewControllerAnimated:YES];
//}
//
///*-(IBAction)goToMenu:(id)sender{
// 
// }*/
//-(IBAction)onClick:(id)sender{
//    Custom_View * btn=(Custom_View*)sender;
//    tagOfCurrentSelection = btn.tag;
//    
//    
//    
//    Custom_View * view;
//    for(int i=0;i<self.myCount;i++)
//    {
//        view=[self.CustomViewsList objectAtIndex:i];
//        if(btn.tag ==i)
//        {
//            [view Select];
//        }
//        else{
//            [view unSelect];
//        }
//    }
//}
//-(IBAction)goToFacebook:(id)sender{
//    
//    UIGraphicsBeginImageContext(self.view.frame.size);
//    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    self.myImg = [[UIImageView alloc] init];
//    self.myImg.image= image;
//    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
//    {
//        
//        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
//        
//        [controller setInitialText:@"Please help me in Word Trivia. Download Free at  http://itunes.apple.com/app/id813487876p"];
//        //[controller addURL:[NSURL URLWithString:@"http://www.appcoda.com"]];
//        [controller addImage:image];
//        controller.completionHandler = ^(SLComposeViewControllerResult result) {
//            switch(result)
//            {
//                    //  This means the user cancelled without sending the Tweet
//                case SLComposeViewControllerResultCancelled:
//                    break;
//                    //  This means the user hit 'Send'
//                case SLComposeViewControllerResultDone:
//                {
//                    
//                    UIAlertView *tmp = [[UIAlertView alloc]
//                                        initWithTitle:@"Congratulations!!!"
//                                        message:@"You have successfully Shared the Puzzle"
//                                        delegate:self
//                                        cancelButtonTitle:nil
//                                        otherButtonTitles:@"OK", nil];
//                    
//                    [tmp show];
//                    break;
//
//                }
//            }
//        };
//        [self presentViewController:controller animated:YES completion:Nil];
//        
//    }
//    else
//    {
//        UIAlertView *tmp = [[UIAlertView alloc]
//                            initWithTitle:@"Word Trivia"
//                            message:@"Please set Facebook account credentials from settings"
//                            delegate:self
//                            cancelButtonTitle:nil
//                            otherButtonTitles:@"OK", nil];
//        
//        [tmp show];
//        
//    }
//    //[self uploadPushed:self];
//    
//}
//
//-(IBAction)uploadPushed:(id)sender
//{
//    if (FBSession.activeSession.isOpen) {
//        
//        // Yes, we are open, so lets make a request for user details so we can get the user name.
//        
//        [self promptUserWithAccountName];// a custom method - see below:
//    } else {
//        
//        // We don't have an active session in this app, so lets open a new
//        // facebook session with the appropriate permissions!
//        
//        // Firstly, construct a permission array.
//        // you can find more "permissions strings" at http://developers.facebook.com/docs/authentication/permissions/
//        // In this example, we will just request a publish_stream which is required to publish status or photos.
//        
//        NSArray *permissions = [[NSArray alloc] initWithObjects: @"user_photos",@"public_profile",@"publish_actions",@"user_videos",@"publish_stream",@"offline_access",@"user_checkins",@"friends_checkins",@"publish_checkins",@"email",
//                                nil];
//        
//        // OPEN Session!
//        [self controlStatusUsable:NO];
//        [FBSession openActiveSessionWithPermissions:permissions
//                                       allowLoginUI:YES
//                                  completionHandler:^(FBSession *session,
//                                                      FBSessionState status,
//                                                      NSError *error) {
//                                      // if login fails for any reason, we alert
//                                      if (error) {
//                                          
//                                          // show error to user.
//                                          
//                                      } else if (FB_ISSESSIONOPENWITHSTATE(status)) {
//                                          
//                                          // no error, so we proceed with requesting user details of current facebook session.
//                                          
//                                          [self promptUserWithAccountName];   // a custom method - see below:
//                                      }
//                                      [self controlStatusUsable:YES];
//                                  }];
//    }
//    
//}
//
//
//-(IBAction)goToTwitter:(id)sender{
//    
//    
//    UIGraphicsBeginImageContext(self.view.frame.size);
//    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
//    {
//        
//        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
//        
//        [controller setInitialText:@"Please help me in Word Trivia. Download Free at  http://itunes.apple.com/app/id813487876p"];
//        //[controller addURL:[NSURL URLWithString:@"http://www.appcoda.com"]];
//        [controller addImage:image];
//        controller.completionHandler = ^(SLComposeViewControllerResult result) {
//            switch(result)
//            {
//                    //  This means the user cancelled without sending the Tweet
//                case SLComposeViewControllerResultCancelled:
//                    break;
//                    //  This means the user hit 'Send'
//                case SLComposeViewControllerResultDone:
//                {
//                    
//                    UIAlertView *tmp = [[UIAlertView alloc]
//                                        initWithTitle:@"Congratulations!!!"
//                                        message:@"You have successfully Shared the Puzzle"
//                                        delegate:self
//                                        cancelButtonTitle:nil
//                                        otherButtonTitles:@"OK", nil];
//                    
//                    [tmp show];
//                    break;
//                    
//                }
//            }
//        };
//        [self presentViewController:controller animated:YES completion:Nil];
//    }
//    else
//    {
//        UIAlertView *tmp = [[UIAlertView alloc]
//                            initWithTitle:@"Word Trivia"
//                            message:@"Please set Twitter account credentials from settings"
//                            delegate:self
//                            cancelButtonTitle:nil
//                            otherButtonTitles:@"OK", nil];
//        [tmp show];
//    }
//    /*TWTweetComposeViewController *twitter = [[TWTweetComposeViewController alloc] init];
//    
//    [twitter setInitialText:@"Please help me in Word Trivia. Download Free at  http://itunes.apple.com/app/id813487876"];
//    [twitter addImage:image];
//    [self presentViewController:twitter animated:YES completion:nil];
//    twitter.completionHandler = ^(TWTweetComposeViewControllerResult res) {
//        if(res == TWTweetComposeViewControllerResultDone)
//        {
//            //[self shareReload];
//            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success" message:@"The Tweet was posted successfully." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
//            [alert show];
//        }
//        if(res == TWTweetComposeViewControllerResultCancelled) {
//            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Cancelled" message:@"You Cancelled posting the Tweet." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
//            [alert show];
//        }
//        [self dismissModalViewControllerAnimated:YES];
//    };*/
//    
//    
//}
//-(IBAction)goToHints:(id)sender{
//    int hintCount = [[DataManager DataManagerSharedInstance] Get_Hint_count];
//    if(hintCount <= 0){
//        //        NSBundle *bundle = [NSBundle mainBundle];
//        //        NSDictionary *info = [bundle infoDictionary];
//        //        NSString *AppName = [info objectForKey:@"CFBundleDisplayName"];
//        UIAlertView * noHintsAvailable = [[UIAlertView alloc] initWithTitle:@"Get Hints" message:@"You dont have Hints available. Please Get Hints Now !!!" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
//        noHintsAvailable.tag=2021;
//        [noHintsAvailable show];
//    }
//    else{
//        bool hintMoveSuccessful = false;
//        //NSMutableArray *emptyBoxes = [[NSMutableArray alloc]init];
//        [self.emptyBoxes removeAllObjects];
//        int emptyCount = 0;
//        for(int i=0;i<self.myCount;i++)
//        {
//            if([self.allButtons objectAtIndex:i]!=[NSNull null])
//            {
//                [self.emptyBoxes addObject: [NSNumber numberWithInt: i]];
//                emptyCount++;
//            }
//        }
//        
//        CustomButton * alButton;
//        int buttonNotMovedCount = 0;
//        for(int i=0;i<self.myCount;i++)
//        {
//            alButton=[self.allButtons objectAtIndex:i];
//            if([self.allButtons objectAtIndex:i]!=[NSNull null] && !alButton.isMoved)
//            {
//                buttonNotMovedCount++;
//            }
//        }
//        
//        
//        
//        if(emptyCount != 0){
//            
//            //////////RANDOMLY PICKING A BUTTON TO BE MOVED TO RIGHT PLACE///////////
//            NSInteger randomNumber = arc4random() % emptyCount;
//            randomNumber = [[self.emptyBoxes objectAtIndex:randomNumber] integerValue];
//            CustomButton *tmpButton = [self.allButtons objectAtIndex:randomNumber];
//            //////////////////////////////////////////
//            
//            
//            Custom_View *thisCustomView=[self.CustomViewsList objectAtIndex:randomNumber];
//            if(!thisCustomView.isFilled){
//                //////////MOVING BUTTON TO ITS RIGHT PLACE AND LOCKING IT////////////////
//                [tmpButton MoveUp];
//                [tmpButton LockIt];
//                [self SaveRevealedLetterAtIndex:randomNumber :tmpButton];
//                hintMoveSuccessful = true;
//                tmpButton.tagOfHiddenButton = randomNumber;
//                CGRect someRect = [[self.CustomViewsFramesList objectAtIndex:randomNumber] CGRectValue];
//                if(bound.size.height>568){
//                    if(choicD==6){
//                        CGRect frame = someRect;
//                        frame.size.width=85;
//                        frame.size.height=81;
//                        someRect = frame;
//                    }
//                    else if(choicD==5){
//                        CGRect frame = someRect;
//                        frame.size.width=102;
//                        frame.size.height=96;
//                        someRect = frame;
//                    }
//                    else if(choicD==4){
//                        CGRect frame = someRect;
//                        frame.size.width=117;
//                        frame.size.height=118;
//                        someRect = frame;
//                    }
//                    else if(choicD==3){
//                        CGRect frame = someRect;
//                        frame.size.width=165.6;
//                        frame.size.height=154.783334;
//                        someRect = frame;
//                    }
//                }
//                else if(bound.size.height<=568){
//                    if(choicD==6){
//                        CGRect frame = someRect;
//                        frame.size.width=36;
//                        frame.size.height=37.67;
//                        someRect = frame;
//                    }
//                    else if(choicD==5){
//                        CGRect frame = someRect;
//                        frame.size.width=43.22;
//                        frame.size.height=44.65;
//                        someRect = frame;
//                    }
//                    else if(choicD==4){
//                        CGRect frame = someRect;
//                        frame.size.width=49.58;
//                        frame.size.height=54.88;
//                        someRect = frame;
//                    }
//                    else if(choicD==3){
//                        CGRect frame = someRect;
//                        frame.size.width=69;
//                        frame.size.height=74;
//                        someRect = frame;
//                    }
//                }
//                [UIView animateWithDuration:0.1f
//                                      delay:0.0f
//                                    options: UIViewAnimationOptionCurveLinear
//                                 animations:^{
//                                     [tmpButton setFrame:someRect];
//                                 }
//                                 completion:nil];
//                ///////////////////////////////////
//                
//                
//                //////////FILLING AND HIDING THE PARTICULAR GRIDBOX///////////////
//                Custom_View *mytemp = [self.CustomViewsList objectAtIndex:randomNumber];
//                [mytemp Fill];
//                mytemp.tagOfButtonOnTopOfMe = randomNumber;
//                mytemp.hidden = YES;
//                //////////////////////////
//                
//                [self updateHintCountLabel];
//                //////////UPDATING BUTTON ARRAYS////////////////
//                [self.movedButtons replaceObjectAtIndex:randomNumber withObject:tmpButton];
//                [self.allButtons replaceObjectAtIndex:randomNumber withObject:[NSNull null]];
//                [self.buttonFramesList replaceObjectAtIndex:randomNumber withObject:[NSValue valueWithCGRect:someRect]];
//                ///////////////////////////////
//                
//                
//                
//                
//                //////////COMPARING INTERLINKED ROW AND COLUMN/////////////
//                NSString * stringA = tmpButton.myTitleValue;
//                NSString * stringB = [self.letters objectAtIndex:randomNumber];
//                if([stringA isEqualToString: stringB]){
//                    int linkerIndex = randomNumber;
//                    [self comparingInterlinkedRowsAndColumns: linkerIndex];
//                }
//                ////////////////////////
//                
//                ///////////PICKING NEW SELECTION///////////////
//                if(randomNumber == tagOfCurrentSelection){
//                    [self pickNewSelection:tmpButton];
//                }
//                ////////////////////
//            }
//            else if(thisCustomView.isFilled){
//                
//                Custom_View * viewSearch;
//                for(int j=0;j<self.myCount;j++)
//                {
//                    viewSearch=[self.CustomViewsList objectAtIndex:j];
//                    if(!viewSearch.isFilled && ([viewSearch.myRightAnswer isEqualToString: tmpButton.myTitleValue]))
//                    {
//                        //////////MOVING BUTTON TO ANOTHER RIGHT PLACE AND LOCKING IT////////////////
//                        [tmpButton MoveUp];
//                        [tmpButton LockIt];
//                        [self SaveRevealedLetterAtIndex:j :tmpButton];
//                        hintMoveSuccessful = true;
//                        tmpButton.tagOfHiddenButton = j;
//                        CGRect someRect = [[self.CustomViewsFramesList objectAtIndex:j] CGRectValue];
//                        if(bound.size.height>568){
//                            if(choicD==6){
//                                CGRect frame = someRect;
//                                frame.size.width=85;
//                                frame.size.height=81;
//                                someRect = frame;
//                            }
//                            else if(choicD==5){
//                                CGRect frame = someRect;
//                                frame.size.width=102;
//                                frame.size.height=96;
//                                someRect = frame;
//                            }
//                            else if(choicD==4){
//                                CGRect frame = someRect;
//                                frame.size.width=117;
//                                frame.size.height=118;
//                                someRect = frame;
//                            }
//                            else if(choicD==3){
//                                CGRect frame = someRect;
//                                frame.size.width=165.6;
//                                frame.size.height=154.783334;
//                                someRect = frame;
//                            }
//                        }
//                        else if(bound.size.height<=568){
//                            if(choicD==6){
//                                CGRect frame = someRect;
//                                frame.size.width=36;
//                                frame.size.height=37.67;
//                                someRect = frame;
//                            }
//                            else if(choicD==5){
//                                CGRect frame = someRect;
//                                frame.size.width=43.22;
//                                frame.size.height=44.65;
//                                someRect = frame;
//                            }
//                            else if(choicD==4){
//                                CGRect frame = someRect;
//                                frame.size.width=49.58;
//                                frame.size.height=54.88;
//                                someRect = frame;
//                            }
//                            else if(choicD==3){
//                                CGRect frame = someRect;
//                                frame.size.width=69;
//                                frame.size.height=74;
//                                someRect = frame;
//                            }
//                        }
//                        [UIView animateWithDuration:0.1f
//                                              delay:0.0f
//                                            options: UIViewAnimationOptionCurveLinear
//                                         animations:^{
//                                             [tmpButton setFrame:someRect];
//                                         }
//                                         completion:nil];
//                        ////////////////////////////////
//                        
//                        
//                        //////////FILLING AND HIDING THE PARTICULAR GRIDBOX///////////////
//                        Custom_View *mytemp = [self.CustomViewsList objectAtIndex:j];
//                        [mytemp Fill];
//                        mytemp.tagOfButtonOnTopOfMe = randomNumber;
//                        mytemp.hidden = YES;
//                        /////////////////////
//                        
//                        [self updateHintCountLabel];
//                        //////////UPDATING BUTTON ARRAYS////////////////
//                        [self.movedButtons replaceObjectAtIndex:randomNumber withObject:tmpButton];
//                        [self.allButtons replaceObjectAtIndex:randomNumber withObject:[NSNull null]];
//                        [self.buttonFramesList replaceObjectAtIndex:randomNumber withObject:[NSValue valueWithCGRect:someRect]];
//                        ///////////////////////////////
//                        
//                        
//                        
//                        
//                        //////////COMPARING INTERLINKED ROW AND COLUMN/////////////
//                        [self comparingInterlinkedRowsAndColumns:j];
//                        //////////////////////
//                        
//                        
//                        ///////////PICKING NEW SELECTION///////////////
//                        if(j == tagOfCurrentSelection){
//                            [self pickNewSelection:tmpButton];
//                        }
//                        ////////////////////
//                        
//                        break;
//                    }
//                    
//                }
//                
//                
//                
//            }
//        }
//        
//        CustomButton * movedButton;
//        //NSMutableArray *filledBoxes = [[NSMutableArray alloc]init];
//        [self.filledBoxes removeAllObjects];
//        int movedCount = 0;
//        for(int i=0;i<self.myCount;i++)
//        {
//            movedButton=[self.movedButtons objectAtIndex:i];
//            if(([self.movedButtons objectAtIndex:i]!=[NSNull null]) && movedButton.canBeMoved)
//            {
//                [self.filledBoxes addObject: [NSNumber numberWithInt: i]];
//                movedCount++;
//            }
//        }
//        
//        if(!hintMoveSuccessful && movedCount!=0){
//            //////////RANDOMLY PICKING A BUTTON TO BE MOVED TO RIGHT PLACE///////////
//            NSInteger randomNumber = arc4random() % movedCount;
//            randomNumber = [[self.filledBoxes objectAtIndex:randomNumber] integerValue];
//            CustomButton *ontopButton = [self.movedButtons objectAtIndex:randomNumber];
//            //////////////////////////////////////////
//            
//            Custom_View *thisCustomView=[self.CustomViewsList objectAtIndex:ontopButton.tagOfHiddenButton];
//            
//            
//            if(thisCustomView.isFilled && ([thisCustomView.myRightAnswer isEqualToString:ontopButton.myTitleValue])){
//                //////////LOCKING BUTTON ALREADY AT ITS RIGHT PLACE////////////////
//                [ontopButton LockIt];
//                [self SaveRevealedLetterAtIndex:ontopButton.tagOfHiddenButton :ontopButton];
//                hintMoveSuccessful = true;
//                
//                ///////////////////////////////////
//                [self updateHintCountLabel];
//                
//                
//                
//                //////////COMPARING INTERLINKED ROW AND COLUMN/////////////
//                NSString * stringA = ontopButton.myTitleValue;
//                NSString * stringB = [self.letters objectAtIndex:ontopButton.tagOfHiddenButton];
//                if([stringA isEqualToString: stringB]){
//                    int linkerIndex = ontopButton.tagOfHiddenButton;
//                    [self comparingInterlinkedRowsAndColumns: linkerIndex];
//                }
//                ////////////////////////
//                
//            }
//            
//            else if(thisCustomView.isFilled && (![thisCustomView.myRightAnswer isEqualToString:ontopButton.myTitleValue])){
//                /////////MOVING DOWN THE WRONG PLACED ALPHABET///////////
//                int tagOfThisButton = ontopButton.tag-200;
//                [ontopButton MoveDown];
//                [self DeleteRevealedLetterAtIndex:ontopButton.tagOfHiddenButton];
//                CGRect newFrame = [[self.buttonOnStartFramesList objectAtIndex:tagOfThisButton] CGRectValue];
//                
//                [UIView animateWithDuration:0.1f
//                                      delay:0.0f
//                                    options: UIViewAnimationOptionCurveLinear
//                                 animations:^{
//                                     [ontopButton setFrame:newFrame];
//                                 }
//                                 completion:nil];
//                ///////////////////////////////////
//                
//                
//                
//                //////////UN-FILLING AND UN-HIDING THAT GRIDBOX//////////////
//                Custom_View *mytemp = [self.CustomViewsList objectAtIndex:ontopButton.tagOfHiddenButton];
//                [mytemp unFill];
//                mytemp.hidden = NO;
//                [self.movedButtons replaceObjectAtIndex:tagOfThisButton withObject:[NSNull null]];
//                [self.allButtons replaceObjectAtIndex:tagOfThisButton withObject:ontopButton];
//                ///////////////////////////////
//                
//                
//                
//                
//                
//                
//                
//                CustomButton *rightButton;
//                for(int k=0; k<self.myCount; k++){
//                    rightButton = [self.allButtons objectAtIndex:k];
//                    if([self.allButtons objectAtIndex:k]!=[NSNull null] && ([rightButton.myTitleValue isEqualToString:mytemp.myRightAnswer])){
//                        //////////MOVING CORRECT BUTTON TO THAT RIGHT GRIDBOX FOR IT AND LOCKING IT////////////////
//                        [rightButton MoveUp];
//                        [rightButton LockIt];
//                        [self SaveRevealedLetterAtIndex:mytemp.tag :rightButton];
//                        hintMoveSuccessful = true;
//                        rightButton.tagOfHiddenButton = mytemp.tag;
//                        CGRect someRect = [[self.CustomViewsFramesList objectAtIndex:mytemp.tag] CGRectValue];
//                        if(bound.size.height>568){
//                            if(choicD==6){
//                                CGRect frame = someRect;
//                                frame.size.width=85;
//                                frame.size.height=81;
//                                someRect = frame;
//                            }
//                            else if(choicD==5){
//                                CGRect frame = someRect;
//                                frame.size.width=102;
//                                frame.size.height=96;
//                                someRect = frame;
//                            }
//                            else if(choicD==4){
//                                CGRect frame = someRect;
//                                frame.size.width=117;
//                                frame.size.height=118;
//                                someRect = frame;
//                            }
//                            else if(choicD==3){
//                                CGRect frame = someRect;
//                                frame.size.width=165.6;
//                                frame.size.height=154.783334;
//                                someRect = frame;
//                            }
//                        }
//                        else if(bound.size.height<=568){
//                            if(choicD==6){
//                                CGRect frame = someRect;
//                                frame.size.width=36;
//                                frame.size.height=37.67;
//                                someRect = frame;
//                            }
//                            else if(choicD==5){
//                                CGRect frame = someRect;
//                                frame.size.width=43.22;
//                                frame.size.height=44.65;
//                                someRect = frame;
//                            }
//                            else if(choicD==4){
//                                CGRect frame = someRect;
//                                frame.size.width=49.58;
//                                frame.size.height=54.88;
//                                someRect = frame;
//                            }
//                            else if(choicD==3){
//                                CGRect frame = someRect;
//                                frame.size.width=69;
//                                frame.size.height=74;
//                                someRect = frame;
//                            }
//                        }
//                        [UIView animateWithDuration:0.1f
//                                              delay:0.0f
//                                            options: UIViewAnimationOptionCurveLinear
//                                         animations:^{
//                                             [rightButton setFrame:someRect];
//                                         }
//                                         completion:nil];
//                        ///////////////////////////////////
//                        
//                        
//                        //////////FILLING AND HIDING THE PARTICULAR GRIDBOX///////////////
//                        [mytemp Fill];
//                        mytemp.tagOfButtonOnTopOfMe = rightButton.tag-200;
//                        mytemp.hidden = YES;
//                        //////////////////////////
//                        
//                        [self updateHintCountLabel];
//                        //////////UPDATING BUTTON ARRAYS////////////////
//                        [self.movedButtons replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:rightButton];
//                        [self.allButtons replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:[NSNull null]];
//                        [self.buttonFramesList replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:[NSValue valueWithCGRect:someRect]];
//                        ///////////////////////////////
//                        
//                        
//                        
//                        
//                        //////////COMPARING INTERLINKED ROW AND COLUMN/////////////
//                        NSString * stringA = rightButton.myTitleValue;
//                        NSString * stringB = mytemp.myRightAnswer;
//                        if([stringA isEqualToString: stringB]){
//                            int linkerIndex = mytemp.tag;
//                            [self comparingInterlinkedRowsAndColumns: linkerIndex];
//                        }
//                        ////////////////////////
//                        
//                        
//                        break;
//                    }
//                    else{
//                        rightButton = [self.movedButtons objectAtIndex:k];
//                        if([self.movedButtons objectAtIndex:k]!=[NSNull null] && rightButton.canBeMoved && ([rightButton.myTitleValue isEqualToString:mytemp.myRightAnswer])){
//                            //////////EMPTYING THE WRONG SPOT BEING OCCUPIED/////////
//                            [self DeleteRevealedLetterAtIndex:rightButton.tagOfHiddenButton];
//                            Custom_View *mmytemp = [self.CustomViewsList objectAtIndex:rightButton.tagOfHiddenButton];
//                            [mmytemp unFill];
//                            
//                            //...........................
//                            [mmytemp Select];
//                            tagOfCurrentSelection = rightButton.tagOfHiddenButton;
//                            //...........................
//                            
//                            
//                            
//                            mmytemp.hidden = NO;
//                            
//                            /////////////////////////
//                            
//                            
//                            //...........................
//                            ///////ALL OTHER GRID BOXES GETTING UN-SELECTED///////
//                            Custom_View * view;
//                            for(int i=0;i<self.myCount;i++)
//                            {
//                                view=[self.CustomViewsList objectAtIndex:i];
//                                if(rightButton.tagOfHiddenButton!=i)
//                                {
//                                    [view unSelect];
//                                }
//                            }
//                            //////////////////////////////////////////////////////
//                            //...........................
//                            
//                            //////////MOVING BUTTON TO ITS RIGHT PLACE AND LOCKING IT////////////////
//                            [rightButton MoveUp];
//                            [rightButton LockIt];
//                            [self SaveRevealedLetterAtIndex:mytemp.tag :rightButton];
//                            hintMoveSuccessful = true;
//                            
//                            
//                            
//                            
//                            
//                            
//                            
//                            
//                            
//                            
//                            rightButton.tagOfHiddenButton = mytemp.tag;
//                            CGRect someRect = [[self.CustomViewsFramesList objectAtIndex:mytemp.tag] CGRectValue];
//                            if(bound.size.height>568){
//                                if(choicD==6){
//                                    CGRect frame = someRect;
//                                    frame.size.width=85;
//                                    frame.size.height=81;
//                                    someRect = frame;
//                                }
//                                else if(choicD==5){
//                                    CGRect frame = someRect;
//                                    frame.size.width=102;
//                                    frame.size.height=96;
//                                    someRect = frame;
//                                }
//                                else if(choicD==4){
//                                    CGRect frame = someRect;
//                                    frame.size.width=117;
//                                    frame.size.height=118;
//                                    someRect = frame;
//                                }
//                                else if(choicD==3){
//                                    CGRect frame = someRect;
//                                    frame.size.width=165.6;
//                                    frame.size.height=154.783334;
//                                    someRect = frame;
//                                }
//                            }
//                            else if(bound.size.height<=568){
//                                if(choicD==6){
//                                    CGRect frame = someRect;
//                                    frame.size.width=36;
//                                    frame.size.height=37.67;
//                                    someRect = frame;
//                                }
//                                else if(choicD==5){
//                                    CGRect frame = someRect;
//                                    frame.size.width=43.22;
//                                    frame.size.height=44.65;
//                                    someRect = frame;
//                                }
//                                else if(choicD==4){
//                                    CGRect frame = someRect;
//                                    frame.size.width=49.58;
//                                    frame.size.height=54.88;
//                                    someRect = frame;
//                                }
//                                else if(choicD==3){
//                                    CGRect frame = someRect;
//                                    frame.size.width=69;
//                                    frame.size.height=74;
//                                    someRect = frame;
//                                }
//                            }
//                            [UIView animateWithDuration:0.1f
//                                                  delay:0.0f
//                                                options: UIViewAnimationOptionCurveLinear
//                                             animations:^{
//                                                 [rightButton setFrame:someRect];
//                                             }
//                                             completion:nil];
//                            ///////////////////////////////////
//                            
//                            
//                            //////////FILLING AND HIDING THE PARTICULAR GRIDBOX///////////////
//                            [mytemp Fill];
//                            mytemp.tagOfButtonOnTopOfMe = rightButton.tag-200;
//                            mytemp.hidden = YES;
//                            //////////////////////////
//                            
//                            [self updateHintCountLabel];
//                            //////////UPDATING BUTTON ARRAYS////////////////
//                            [self.movedButtons replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:rightButton];
//                            [self.allButtons replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:[NSNull null]];
//                            [self.buttonFramesList replaceObjectAtIndex:mytemp.tagOfButtonOnTopOfMe withObject:[NSValue valueWithCGRect:someRect]];
//                            ///////////////////////////////
//                            
//                            
//                            
//                            //////////COMPARING INTERLINKED ROW AND COLUMN/////////////
//                            NSString * stringA = rightButton.myTitleValue;
//                            NSString * stringB = mytemp.myRightAnswer;
//                            if([stringA isEqualToString: stringB]){
//                                int linkerIndex = mytemp.tag;
//                                [self comparingInterlinkedRowsAndColumns: linkerIndex];
//                            }
//                            break;
//                        }
//                    }
//                }
//            }
//        }
//        //////CHECKING IF LEVEL HAS FINISHED OR NOT //////
//        //[self winConditionCheck];
//        //[self performSelector:@selector(winConditionCheck) withObject:nil afterDelay:1.0 ];
//        /////////////////////////////////////////////////
//    }
//}
//-(void)controlStatusUsable:(BOOL)usable {
//    if (usable) {
//        //        btnUploadImg.userInteractionEnabled = YES;
//        //        btnUpdateStatus.userInteractionEnabled = YES;
//        //        self.activity.hidden = YES;
//        //        [self.activity stopAnimating];
//    } else {
//        //        btnUploadImg.userInteractionEnabled = NO;
//        //        btnUpdateStatus.userInteractionEnabled = NO;
//        //        self.activity.hidden = NO;
//        //        [self.activity startAnimating];
//    }
//    
//}
//
//-(void)promptUserWithAccountName {
//    [self controlStatusUsable:NO];
//    [[FBRequest requestForMe] startWithCompletionHandler:
//     ^(FBRequestConnection *connection, NSDictionary<FBGraphUser> *user, NSError *error) {
//         if (!error) {
//             NSString *message = [NSString stringWithFormat:@"Do you want to get help from your Friends?"];
//             UIAlertView *tmp = [[UIAlertView alloc]
//                                 initWithTitle:@"Share with Friends"
//                                 message:message
//                                 delegate:self
//                                 cancelButtonTitle:nil
//                                 otherButtonTitles:@"No",@"Yes", nil];
//             tmp.tag = 8000; // We are also setting the tag to this alert so we can identify it in delegate method later
//             [tmp show];
//             
//         }
//         [self controlStatusUsable:YES]; // whether error occur or not, enable back the UI
//     }];
//}
//
//-(void)updateHintCountLabel
//{
//    //int hintCount = [[DataManager DataManagerSharedInstance] Get_Hint_count];
//    [[DataManager DataManagerSharedInstance] Subtract_Hint_count:1];
//    int hintCount = [[DataManager DataManagerSharedInstance] Get_Hint_count];
//    NSString *strFromInt = [NSString stringWithFormat:@"%d",hintCount];
//    self.label_hintCount.text = strFromInt;
//}
//
//-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
//    if(![[DataManager DataManagerSharedInstance] Is_Facebook_Connection_Done]){
//        [[DataManager DataManagerSharedInstance] Set_Facebook_Connection_Done];
//        [[DataManager DataManagerSharedInstance] Add_Hint_count:10];
//        
//        int hintCount = [[DataManager DataManagerSharedInstance] Get_Hint_count];
//        NSString *strFromInt = [NSString stringWithFormat:@"%d",hintCount];
//        self.label_hintCount.text = strFromInt;
//    }
//    isUserLoggedIn = true;
//}
//
//-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView
//{
//    isUserLoggedIn = false;
//}
//
//-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error
//{
//    
//    NSLog(@"%@",[error localizedDescription]);
//    
//}
//
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//
//
//
//
//#define degreesToRadians(x) (M_PI * (x) / 180.0)
//#define kAnimationRotateDeg 1.0
//#define kAnimationTranslateX 2.0
//#define kAnimationTranslateY 2.0
//
//- (void)startJiggling
//{
//    
//    CGAffineTransform leftWobble = CGAffineTransformMakeRotation(degreesToRadians( kAnimationRotateDeg * (0%2 ? +10 : -10 ) ));
//    CGAffineTransform rightWobble = CGAffineTransformMakeRotation(degreesToRadians( kAnimationRotateDeg * (0%2 ? -10 : +10 ) ));
//    CGAffineTransform moveTransform = CGAffineTransformTranslate(rightWobble, -kAnimationTranslateX, -kAnimationTranslateY);
//    CGAffineTransform conCatTransform = CGAffineTransformConcat(rightWobble, moveTransform);
//    
//    self.hint_View_to_Rotate.transform = leftWobble;  // starting point
//    
//    [UIView animateWithDuration:0.1
//                          delay:(0 * 0.08)
//                        options:UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
//                     animations:^{ self.hint_View_to_Rotate.transform = conCatTransform;}
//                     completion:nil
//     ];
//}
//- (void)stopJiggling
//{
//    [self.hint_View_to_Rotate.layer removeAllAnimations];
//    self.hint_View_to_Rotate.transform = CGAffineTransformIdentity;  // Set it straight
//}
//-(void) animate_Hint
//{
//    [self startJiggling];
//    [self performSelector:@selector(stopJiggling) withObject:nil afterDelay:0.5];
//}
//
//@end