//
//  Packs.h
//  Word in Pieces
//
//  Created by Usman Ahmad on 2/15/14.
//  Copyright (c) 2014 Horizon Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Mode;

@interface Packs : NSManagedObject

@property (nonatomic, retain) NSString * current_level;
@property (nonatomic, retain) NSString * current_level_id;
@property (nonatomic, retain) NSString * current_mode_id;
@property (nonatomic, retain) NSString * iD;
@property (nonatomic, retain) NSString * isLocked;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * total_levels;
@property (nonatomic, retain) NSSet *modes_list;
@end

@interface Packs (CoreDataGeneratedAccessors)

- (void)addModes_listObject:(Mode *)value;
- (void)removeModes_listObject:(Mode *)value;
- (void)addModes_list:(NSSet *)values;
- (void)removeModes_list:(NSSet *)values;

@end
