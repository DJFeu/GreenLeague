//
//  ScoreKey.m
//  GreenLeague
//
//  Created by Tak Tran on 16/05/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ScoreKey.h"
#import "Score.h"

#define kKeyField 0
#define kKeyValueField 1


@implementation ScoreKey
@dynamic text;
@dynamic key;
@dynamic score;

static NSString *kScoreKeyEntityName = @"ScoreKey";

#pragma mark -
#pragma mark === Class methods ===
#pragma mark


+ (NSString *)entityName {
	return [NSString stringWithString:kScoreKeyEntityName];
}

// Returns an array of ScoreKey objects from an array of 
// keys as strings.
// If a key is not found, then the nil object is stored in the array
+ (NSArray *)scoreKeyArrayFromKeyStringArray:(NSArray *)keyStringArray managedObjectContext:(NSManagedObjectContext *)managedObjectContext {
    
    NSMutableArray *scoreKeyArray = [[NSArray alloc] init];
    
    for (int i = 0; i < [keyStringArray count]; i++) {
        NSString *keyStr = [keyStringArray objectAtIndex:i];
        
        // Find string in ScoreKey table
		NSEntityDescription *entity = [NSEntityDescription entityForName:[ScoreKey entityName] inManagedObjectContext: managedObjectContext];
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"key == '%@'", keyStr];
        
		NSFetchRequest *request = [[NSFetchRequest alloc] init];
		[request setEntity:entity]; 
        [request setPredicate:predicate];        
        
		// Fetch the records and handle an error
		NSError *error;
		NSMutableArray *scoreKeys = [[managedObjectContext executeFetchRequest:request error:&error] mutableCopy];
		if (!scoreKeys) {
			// Handle the error.
			// This is a serious error and should advise the user to restart the application
			NSLog(@"scoreKeys error: %@", error);
		}
        [request release];
        
        if ([scoreKeys count] == 1) {
            [scoreKeyArray addObject:[scoreKeys objectAtIndex:0]]; // Just add the first match - should only be one
        } else {
            NSLog(@"scoreKeys error: Should have 1 item, but has %d item(s)", [scoreKeys count]);
        }
    }
    
    return [scoreKeyArray autorelease];
}

+ (void)addScoreKeyToDBWithManagedContext:(NSManagedObjectContext *)managedObjectContext fromRowArray:(NSArray *)rowArray {
    
	ScoreKey *scoreKey;
	
	if ([rowArray count] > kKeyValueField) {
		NSString *key = [rowArray objectAtIndex:kKeyField];
        NSString *scoreText = [rowArray objectAtIndex:kKeyValueField];
        
		if ((key.length > 0) && (scoreText.length > 0)) {
			scoreKey = (ScoreKey *)[NSEntityDescription insertNewObjectForEntityForName:[ScoreKey entityName] inManagedObjectContext:managedObjectContext];
			[scoreKey setKey:key];
			[scoreKey setText:scoreText];
			
			NSError *error;					
			if(![managedObjectContext save:&error]) {
				//This is a serious error saying the record  
				//could not be saved. Advise the user to  
				//try again or restart the application.   
				NSLog(@"Error in saving the record: %@", error);
			}		
			
		} // Else, do nothing - shouldn't have an empty row
	}    
    
}

@end