//
//  UniversityComparisonViewController.m
//  GreenLeague
//
//  Created by Tak Tran on 09/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UniversityComparisonViewController.h"


#define kWidth 1250.0
#define kHeight 50.0

@implementation UniversityComparisonViewController

@synthesize university;
@synthesize universityNameLabel, totalScoreLabel, policy1ResultImage, policy2ResultImage, policy3ResultImage, policy4ResultImage, policy5ResultImage, policy6ResultImage, policy7ResultImage, performance8ResultImage, performance9ResultImage, performance10ResultImage, performance11ResultImage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithUniversity:(University *)uni {
    self = [self initWithNibName:@"UniversityComparisonViewController" bundle:nil];
    if (self) {
        self.university = [uni retain];
    }
    return self;
}

- (void)dealloc {
    [universityNameLabel release];
    [totalScoreLabel release];
    
    [policy1ResultImage release];
    [policy2ResultImage release];
    [policy3ResultImage release];
    [policy4ResultImage release];
    [policy5ResultImage release];
    [policy6ResultImage release];
    [policy7ResultImage release];
    
    [performance8ResultImage release];
    [performance9ResultImage release];
    [performance10ResultImage release];
    [performance11ResultImage release];
    
    [university release];    
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    universityNameLabel.text = self.university.sortName;
    totalScoreLabel.text = [NSString stringWithFormat:@"%.1f", [self.university.totalScore floatValue]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark === Dimensions ===
#pragma mark

+ (CGFloat)width {
    return kWidth;
}

+ (CGFloat)height {
    return kHeight;
}

@end