//
//  Custom_View.m
//  AlphaSudoku
//
//  Created by Saad Zubair on 12/30/13.
//  Copyright (c) 2013 Saad Zubair. All rights reserved.
//

#import "Custom_View.h"

@implementation Custom_View
@synthesize selected,isRevealed;
@synthesize isFilled;
@synthesize tagOfButtonOnTopOfMe;
@synthesize myRightAnswer;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        selected = false;
        isRevealed=false;
        isFilled = false;
        tagOfButtonOnTopOfMe = -1;
        // UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(aMethodToBeCalled:)];
        //  [self addGestureRecognizer:tapGR];
    }
    return self;
}



-(void)Fill{
    if(!isFilled){
        selected = false;
        isFilled = true;
        //UIImage * blankBoxImage=[UIImage imageNamed:@"empty-box.png"];
        //[self setBackgroundImage:blankBoxImage forState:UIControlStateNormal];
        //[self setBackgroundColor:[UIColor redColor]];
        //[self setHighlighted:YES];
        //self.backgroundColor = [UIColor orangeColor];
    }
}

-(void)unFill{
    if(isFilled){
        tagOfButtonOnTopOfMe = -1;
        isFilled = false;
        UIImage * blankBoxImage=[UIImage imageNamed:@"empty-box.png"];
        [self setBackgroundImage:blankBoxImage forState:UIControlStateNormal];
        //[self setBackgroundColor:[UIColor redColor]];
        //[self setHighlighted:YES];
        //self.backgroundColor = [UIColor orangeColor];
    }
}

-(void)Select{
    if(!selected){
        selected = true;
        UIImage * selectBoxImage=[UIImage imageNamed:@"secelter.png"];
        [self setBackgroundImage:selectBoxImage forState:UIControlStateNormal];
        //[self setBackgroundColor:[UIColor orangeColor]];
        //[self setHighlighted:YES];
        //self.backgroundColor = [UIColor orangeColor];
    }
    /*else{
     selected = false;
     isRevealed = true;
     [self setBackgroundColor:[UIColor redColor]];
     }*/
}

-(void)unSelect{
    if(selected){
        selected = false;
        UIImage * blankBoxImage=[UIImage imageNamed:@"empty-box.png"];
        [self setBackgroundImage:blankBoxImage forState:UIControlStateNormal];
        //[self setBackgroundColor:[UIColor redColor]];
        //[self setHighlighted:NO];
        //self.backgroundColor = [UIColor redColor];
    }
    
}


/*
 - (void)aMethodToBeCalled:(UIGestureRecognizer *)tapGesture {
 NSLog(@"%i",self.tag);
 // [self isSelected];
 }
 */

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
