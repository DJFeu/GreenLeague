//
//  University.h
//  GreenLeague
//
//  Created by Tak Tran on 25/02/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface UniversityOld :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * performance11_1Data;
@property (nonatomic, retain) NSNumber * performance8_2Score;
@property (nonatomic, retain) NSNumber * rank2010;
@property (nonatomic, retain) NSNumber * performance8_1Score;
@property (nonatomic, retain) NSNumber * performance10_2Data;
@property (nonatomic, retain) NSNumber * performance11_2Data;
@property (nonatomic, retain) NSNumber * performanceScore;
@property (nonatomic, retain) NSNumber * performance11Score;
@property (nonatomic, retain) NSNumber * performance9_1Data;
@property (nonatomic, retain) NSString * awardClass;
@property (nonatomic, retain) NSNumber * performance9_2Score;
@property (nonatomic, retain) NSNumber * policyScore;
@property (nonatomic, retain) NSNumber * performance9_1Score;
@property (nonatomic, retain) NSNumber * performance11_2Score;
@property (nonatomic, retain) NSNumber * performance9_2Data;
@property (nonatomic, retain) NSNumber * rank2009;
@property (nonatomic, retain) NSNumber * performance11_1Score;
@property (nonatomic, retain) NSNumber * performance10_2Score;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * sortName;
@property (nonatomic, retain) NSNumber * performance10_1Score;
@property (nonatomic, retain) NSNumber * totalScore;
@property (nonatomic, retain) NSNumber * performance9Score;
@property (nonatomic, retain) NSNumber * performance8Score;
@property (nonatomic, retain) NSNumber * policy1Score;
@property (nonatomic, retain) NSNumber * performance8_1Data;
@property (nonatomic, retain) NSNumber * policy2Score;
@property (nonatomic, retain) NSNumber * policy3Score;
@property (nonatomic, retain) NSNumber * performance8_2Data;
@property (nonatomic, retain) NSNumber * policy4Score;
@property (nonatomic, retain) NSNumber * policy5Score;
@property (nonatomic, retain) NSNumber * performance10Score;
@property (nonatomic, retain) NSNumber * performance8_3Data;
@property (nonatomic, retain) NSNumber * policy6Score;
@property (nonatomic, retain) NSNumber * policy7Score;
@property (nonatomic, retain) NSNumber * performance10_1Data;
@property (nonatomic, retain) NSNumber * performance8_3Score;

+ (NSString *)entityName;
+ (void)addUniversityToDBWithManagedContext:(NSManagedObjectContext *)managedObjectContext fromRowArray:(NSArray *)rowArray;

// Max score methods
- (NSNumber *)policy1MaxScore;
- (NSNumber *)policy2MaxScore;
- (NSNumber *)policy3MaxScore;
- (NSNumber *)policy4MaxScore;
- (NSNumber *)policy5MaxScore;
- (NSNumber *)policy6MaxScore;
- (NSNumber *)policy7MaxScore;

- (NSNumber *)performance8MaxScore;
- (NSNumber *)performance9MaxScore;
- (NSNumber *)performance10MaxScore;
- (NSNumber *)performance11MaxScore;

// Convenience methods
- (Boolean)isValidAwardClass;
- (NSString *)awardClassName;

- (UIColor *)awardClassBackgroundColour;
- (UIColor *)awardClassTextColour;

@end


