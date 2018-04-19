//
//  Custom_View.h
//  AlphaSudoku
//
//  Created by Saad Zubair on 12/30/13.
//  Copyright (c) 2013 Saad Zubair. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Custom_View : UIButton{
    
    
}
@property(nonatomic,assign)BOOL isFilled;
@property(nonatomic,assign)BOOL isRevealed;
@property(nonatomic,assign)BOOL selected;
@property(nonatomic,assign)int tagOfButtonOnTopOfMe;
@property(nonatomic,assign)NSString *myRightAnswer;


-(void)Fill;
-(void)unFill;
-(void)Select;
-(void)unSelect;

@end
