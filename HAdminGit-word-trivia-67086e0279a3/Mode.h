//
//  Mode.h
//  Word in Pieces
//
//  Created by Usman Ahmad on 2/15/14.
//  Copyright (c) 2014 Horizon Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Level;

@interface Mode : NSManagedObject

@property (nonatomic, retain) NSString * iD;
@property (nonatomic, retain) NSString * isComplete;
@property (nonatomic, retain) NSString * levels_completed;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * tiles;
@property (nonatomic, retain) NSString * difficulty;
@property (nonatomic, retain) NSSet *levels_list;
@end

@interface Mode (CoreDataGeneratedAccessors)

- (void)addLevels_listObject:(Level *)value;
- (void)removeLevels_listObject:(Level *)value;
- (void)addLevels_list:(NSSet *)values;
- (void)removeLevels_list:(NSSet *)values;

@end
