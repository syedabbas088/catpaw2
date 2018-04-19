//
//  Word.h
//  Word in Pieces
//
//  Created by Usman Ahmad on 2/15/14.
//  Copyright (c) 2014 Horizon Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Word : NSManagedObject

@property (nonatomic, retain) NSString * iD;
@property (nonatomic, retain) NSString * isGuessed;
@property (nonatomic, retain) NSString * name;

@end
