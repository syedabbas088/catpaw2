//
//  CustomButton.m
//  AlphaSudoku
//
//  Created by Saad Zubair on 1/1/14.
//  Copyright (c) 2014 Saad Zubair. All rights reserved.
//

#import "CustomButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation CustomButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //[self setBackgroundColor:[UIColor purpleColor]];
        self.clicked = false;
        self.isMoved = false;
        self.tagOfHiddenButton = -1;
        self.myHeight = 0;
        self.myWidth = 0;
        self.canBeMoved = true;
        self.myText = @"?";
        self.myTitleValue = @"-";
        self.fixedBeforeGameStart = false;
        
    }
    return self;
}

-(void)MoveUp{
    if(!self.isMoved){
        self.isMoved = true;
        self.myText = self.myTitleValue;
        if([self.myAlphabet isEqualToString:@"A"] || [self.myAlphabet isEqualToString:@"a"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-a.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"B"] || [self.myAlphabet isEqualToString:@"b"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-b.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"C"] || [self.myAlphabet isEqualToString:@"c"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-c.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"D"] || [self.myAlphabet isEqualToString:@"d"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-d.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"E"] || [self.myAlphabet isEqualToString:@"e"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-e.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"F"] || [self.myAlphabet isEqualToString:@"f"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-f.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"G"] || [self.myAlphabet isEqualToString:@"g"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-g.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"H"] || [self.myAlphabet isEqualToString:@"h"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-h.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"I"] || [self.myAlphabet isEqualToString:@"i"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-i.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"J"] || [self.myAlphabet isEqualToString:@"j"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-j.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"K"] || [self.myAlphabet isEqualToString:@"k"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-k.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"L"] || [self.myAlphabet isEqualToString:@"l"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-l.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"M"] || [self.myAlphabet isEqualToString:@"m"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-m.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"N"] || [self.myAlphabet isEqualToString:@"n"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-n.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"O"] || [self.myAlphabet isEqualToString:@"o"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-o.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"P"] || [self.myAlphabet isEqualToString:@"p"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-p.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"Q"] || [self.myAlphabet isEqualToString:@"q"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-q.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"R"] || [self.myAlphabet isEqualToString:@"r"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-r.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"S"] || [self.myAlphabet isEqualToString:@"s"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-s.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"T"] || [self.myAlphabet isEqualToString:@"t"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-t.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"U"] || [self.myAlphabet isEqualToString:@"u"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-u.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"V"] || [self.myAlphabet isEqualToString:@"v"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-v.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"W"] || [self.myAlphabet isEqualToString:@"w"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-w.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"X"] || [self.myAlphabet isEqualToString:@"x"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-x.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"Y"] || [self.myAlphabet isEqualToString:@"y"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-y.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"Z"] || [self.myAlphabet isEqualToString:@"z"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"cel-z.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        //myText = self.titleLabel.text;
    }
}

-(void)MoveDown{
    if(self.isMoved){
        if([self.myAlphabet isEqualToString:@"A"] || [self.myAlphabet isEqualToString:@"a"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"a.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"B"] || [self.myAlphabet isEqualToString:@"b"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"b.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"C"] || [self.myAlphabet isEqualToString:@"c"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"c.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"D"] || [self.myAlphabet isEqualToString:@"d"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"d.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"E"] || [self.myAlphabet isEqualToString:@"e"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"e.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"F"] || [self.myAlphabet isEqualToString:@"f"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"f.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"G"] || [self.myAlphabet isEqualToString:@"g"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"g.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"H"] || [self.myAlphabet isEqualToString:@"h"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"h.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"I"] || [self.myAlphabet isEqualToString:@"i"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"i.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"J"] || [self.myAlphabet isEqualToString:@"j"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"j.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"K"] || [self.myAlphabet isEqualToString:@"k"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"k.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"L"] || [self.myAlphabet isEqualToString:@"l"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"l.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"M"] || [self.myAlphabet isEqualToString:@"m"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"m.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"N"] || [self.myAlphabet isEqualToString:@"n"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"n.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"O"] || [self.myAlphabet isEqualToString:@"o"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"o.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"P"] || [self.myAlphabet isEqualToString:@"p"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"p.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"Q"] || [self.myAlphabet isEqualToString:@"q"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"q.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"R"] || [self.myAlphabet isEqualToString:@"r"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"r.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"S"] || [self.myAlphabet isEqualToString:@"s"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"s.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"T"] || [self.myAlphabet isEqualToString:@"t"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"t.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"U"] || [self.myAlphabet isEqualToString:@"u"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"u.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"V"] || [self.myAlphabet isEqualToString:@"v"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"v.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"W"] || [self.myAlphabet isEqualToString:@"w"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"w.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"X"] || [self.myAlphabet isEqualToString:@"x"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"x.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"Y"] || [self.myAlphabet isEqualToString:@"y"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"y.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        else if([self.myAlphabet isEqualToString:@"Z"] || [self.myAlphabet isEqualToString:@"z"]){
            UIImage * unLockedImage=[UIImage imageNamed:@"z.png"];
            [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
        }
        self.isMoved = false;
        self.myText = @"?";
        
    }
}

-(void)LockIt{
    if(self.canBeMoved){
        self.canBeMoved = false;
        if([self.myText isEqualToString:@"A"] || [self.myText isEqualToString:@"a"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-a-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"B"] || [self.myText isEqualToString:@"b"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-b-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"C"] || [self.myText isEqualToString:@"c"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-c-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"D"] || [self.myText isEqualToString:@"d"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-d-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"E"] || [self.myText isEqualToString:@"e"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-e-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"F"] || [self.myText isEqualToString:@"f"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-f-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"G"] || [self.myText isEqualToString:@"g"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-g-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"H"] || [self.myText isEqualToString:@"h"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-h-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"I"] || [self.myText isEqualToString:@"i"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-i-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"J"] || [self.myText isEqualToString:@"j"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-j-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"K"] || [self.myText isEqualToString:@"k"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-k-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"L"] || [self.myText isEqualToString:@"l"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-l-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"M"] || [self.myText isEqualToString:@"m"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-m-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"N"] || [self.myText isEqualToString:@"n"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-n-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"O"] || [self.myText isEqualToString:@"o"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-o-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"P"] || [self.myText isEqualToString:@"p"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-p-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"Q"] || [self.myText isEqualToString:@"q"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-q-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"R"] || [self.myText isEqualToString:@"r"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-r-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"S"] || [self.myText isEqualToString:@"s"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-s-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"T"] || [self.myText isEqualToString:@"t"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-t-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"U"] || [self.myText isEqualToString:@"u"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-u-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"V"] || [self.myText isEqualToString:@"v"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-v-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"W"] || [self.myText isEqualToString:@"w"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-w-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"X"] || [self.myText isEqualToString:@"x"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-x-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"Y"] || [self.myText isEqualToString:@"y"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-y-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
        else if([self.myText isEqualToString:@"Z"] || [self.myText isEqualToString:@"z"]){
            UIImage * LockedImage=[UIImage imageNamed:@"cell-z-g.png"];
            [self setBackgroundImage:LockedImage forState:UIControlStateNormal];
        }
       /* CGRect myRect = self.frame;
        CGRect newRect = CGRectMake(self.frame.origin.x, self.frame.origin.y-20, self.frame.size.width, self.frame.size.height);
        [UIView animateWithDuration:0.2f
                              delay:15.0f
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             [self setFrame:newRect];
                         }
                         completion:nil];
        
        [UIView animateWithDuration:0.1f
                              delay:0.0f
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             [self setFrame:myRect];
                         }
                         completion:nil];*/
        [self setBackgroundColor:[UIColor clearColor]];
    }
}
-(void)AnimateJump: (int)iPadHighJumpFactor
{
    CGRect myRect = self.frame;
    CGRect newRect = CGRectMake(self.frame.origin.x, self.frame.origin.y-20-iPadHighJumpFactor, self.frame.size.width, self.frame.size.height);
    UIImageView *glowImg = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cell-glowj.png"]];
    
    CGRect frame = glowImg.frame;
    CGFloat ratio = frame.size.height/self.frame.size.height;
    float a = 370.0/240.0 * self.frame.size.height;

   float b  =  370.0/240.0 * self.frame.size.width;
    glowImg.frame=CGRectMake(0, 0,b , a);
    glowImg.center=self.center;
    glowImg.alpha=0;
    
    
   // glowImg.frame=CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    
    [self performSelector:@selector(removeImg:) withObject:glowImg afterDelay:0.5];
    [self.superview addSubview:glowImg];
    
    [UIView animateWithDuration:0.3f
                          delay:0.0f
                        options: UIViewAnimationOptionCurveLinear
                     animations:^{
                  glowImg.alpha=1.0;
                       //  [self setFrame:newRect];
                     }
                     completion:nil];
    [UIView animateWithDuration:0.3f
                          delay:0.3f
                        options: UIViewAnimationOptionCurveLinear
                     animations:^{
                         glowImg.alpha=0;
                         //[glowImg removeFromSuperview];
                       //  [self setFrame:myRect];
                     }
                     completion:nil];
}
-(void)removeImg : (UIImageView*)glowImage
{
    [glowImage removeFromSuperview];
}


-(UIImage*)resizeImage:(UIImage *)image imageSize:(CGSize)size X:(double)X Y:(double)Y
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(X,Y,size.width,size.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    //here is the scaled image which has been changed to the size specified
    UIGraphicsEndImageContext();
    return newImage;
    
}

-(void)setAlphabet:(NSString*)letter{
    self.myAlphabet = letter;
    
    if([self.myAlphabet isEqualToString:@"A"] || [self.myAlphabet isEqualToString:@"a"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"a.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"B"] || [self.myAlphabet isEqualToString:@"b"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"b.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"C"] || [self.myAlphabet isEqualToString:@"c"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"c.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"D"] || [self.myAlphabet isEqualToString:@"d"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"d.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"E"] || [self.myAlphabet isEqualToString:@"e"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"e.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"F"] || [self.myAlphabet isEqualToString:@"f"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"f.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"G"] || [self.myAlphabet isEqualToString:@"g"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"g.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"H"] || [self.myAlphabet isEqualToString:@"h"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"h.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"I"] || [self.myAlphabet isEqualToString:@"i"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"i.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"J"] || [self.myAlphabet isEqualToString:@"j"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"j.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"K"] || [self.myAlphabet isEqualToString:@"k"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"k.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"L"] || [self.myAlphabet isEqualToString:@"l"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"l.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"M"] || [self.myAlphabet isEqualToString:@"m"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"m.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"N"] || [self.myAlphabet isEqualToString:@"n"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"n.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"O"] || [self.myAlphabet isEqualToString:@"o"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"o.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"P"] || [self.myAlphabet isEqualToString:@"p"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"p.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"Q"] || [self.myAlphabet isEqualToString:@"q"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"q.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"R"] || [self.myAlphabet isEqualToString:@"r"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"r.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"S"] || [self.myAlphabet isEqualToString:@"s"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"s.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"T"] || [self.myAlphabet isEqualToString:@"t"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"t.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"U"] || [self.myAlphabet isEqualToString:@"u"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"u.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"V"] || [self.myAlphabet isEqualToString:@"v"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"v.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"W"] || [self.myAlphabet isEqualToString:@"w"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"w.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"X"] || [self.myAlphabet isEqualToString:@"x"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"x.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"Y"] || [self.myAlphabet isEqualToString:@"y"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"y.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    else if([self.myAlphabet isEqualToString:@"Z"] || [self.myAlphabet isEqualToString:@"z"]){
        UIImage * unLockedImage=[UIImage imageNamed:@"z.png"];
        [self setBackgroundImage:unLockedImage forState:UIControlStateNormal];
    }
    
}




- (UIImage*)useThisImage:(NSString*)useThisImage
{
    UIImage *retImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:useThisImage]]];
    return retImage;
}


-(void)savingTagOfHidingButton{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end