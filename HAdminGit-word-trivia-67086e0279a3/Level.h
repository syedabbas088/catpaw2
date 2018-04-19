//
//  Level.h
//  Word in Pieces
//
//  Created by Usman Ahmad on 2/15/14.
//  Copyright (c) 2014 Horizon Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Reveal_Letters, Word;

@interface Level : NSManagedObject

@property (nonatomic, retain) NSString * iD;
@property (nonatomic, retain) NSString * isCompleted;
@property (nonatomic, retain) NSSet *revealed_letters_list;
@property (nonatomic, retain) NSSet *words_list;
@end

@interface Level (CoreDataGeneratedAccessors)

- (void)addRevealed_letters_listObject:(Reveal_Letters *)value;
- (void)removeRevealed_letters_listObject:(Reveal_Letters *)value;
- (void)addRevealed_letters_list:(NSSet *)values;
- (void)removeRevealed_letters_list:(NSSet *)values;

- (void)addWords_listObject:(Word *)value;
- (void)removeWords_listObject:(Word *)value;
- (void)addWords_list:(NSSet *)values;
- (void)removeWords_list:(NSSet *)values;

@end
