//
//  TweetTests.m
//  Homework1
//
//  Created by Jeffrey Lam on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TweetTests.h"
#import "Tweet.h"

@interface TweetTests()
@property (strong, nonatomic) Tweet *testTweet;
@end

@implementation TweetTests

@synthesize testTweet = _testTweet;

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    self.testTweet = [[Tweet alloc] init];
}

- (void)testInitWithContentsLatitudeLongitude
{
    NSString *content = @"content";
    double latitude = 1.0, longitude = 2.0;
    Tweet *tweet = [[Tweet alloc] initWithContents:content latitude:latitude longitude:longitude];
    STAssertNotNil(tweet, @"tweet shouldn't be nil");
    STAssertEquals(tweet.contents, content, @"contents don't match");
    STAssertEquals(tweet.latitude, latitude, @"latitudes don't match");
    STAssertEquals(tweet.longitude, longitude, @"longitudes don't match");
}

- (void)testInitWithContents
{
    NSString *content = @"content";
    Tweet *tweet = [[Tweet alloc] initWithContents:content];
    STAssertNotNil(tweet, @"tweet shouldn't be nil");
    STAssertEquals(tweet.contents, content, @"contents don't match");
    STAssertEquals(tweet.latitude, 0.0, @"latitude should be zero");
    STAssertEquals(tweet.longitude, 0.0, @"longitude should be zero");
}

- (void)testSetContents
{
    self.testTweet.contents = @"This string is longer than 140 characters. This string is longer than 140 characters. This string is longer than 140 characters. This string is longer than 140 characters.";
    STAssertTrue([self.testTweet.contents length] <= 140, @"tweet contents > 140");
}

- (void)testSetLatittude
{
    self.testTweet.latitude = -90.01;
    STAssertTrue(self.testTweet.latitude >= -90.0, @"latitude < -90");
    self.testTweet.latitude = 90.01;
    STAssertTrue(self.testTweet.latitude <= 90.0, @"latitude > 90");
}

- (void)testSetLongitude
{
    self.testTweet.longitude = -180.01;
    STAssertTrue(self.testTweet.longitude >= -180.0, @"longitude < -180");
    self.testTweet.longitude = 180.01;
    STAssertTrue(self.testTweet.longitude <= 180.0, @"longitude > 180");
}


@end
