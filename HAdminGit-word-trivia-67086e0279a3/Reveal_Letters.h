//
//  Reveal_Letters.h
//  Word in Pieces
//
//  Created by Usman Ahmad on 2/15/14.
//  Copyright (c) 2014 Horizon Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Reveal_Letters : NSManagedObject

@property (nonatomic, retain) NSString * index;
@property (nonatomic, retain) NSString * isLocked;
@property (nonatomic, retain) NSString * type;

@end
