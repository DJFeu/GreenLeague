//
//  University.h
//  GreenLeague
//
//  Created by Tak Tran (Pebble Code - http://pebblecode.com)
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "_University.h"

@class Score;

@interface University : _University {
@private
}

+ (NSString *)entityName;
+ (NSString *)getSortName:(NSString *)aName;
+ (void)addUniversityToDBWithManagedContext:(NSManagedObjectContext *)managedObjectContext fromRowArray:(NSArray *)rowArray headerRowArray:(NSArray *)headerRowArray;


// Convenience methods
- (Boolean)isValidAwardClass;
- (NSString *)awardClassName;

- (UIColor *)awardClassBackgroundColour;
- (UIColor *)awardClassTextColour;

@end
