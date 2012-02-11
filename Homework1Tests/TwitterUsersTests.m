//
//  TwitterUsersTests.m
//  Homework1
//
//  Created by Jeffrey Lam on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwitterUsersTests.h"
#import "TwitterUser.h"

@interface TwitterUsersTests()

@property (strong, nonatomic) TwitterUser *user1, *user2;

@end

@implementation TwitterUsersTests

@synthesize user1 = _user1, user2 = _user2;

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    self.user1 = [[TwitterUser alloc] init];
    self.user2 = [[TwitterUser alloc] init];
}

- (void)testFollow
{
    STAssertTrue([self.user1.following count] == 0, @"user 1 following nobody initially");
    STAssertTrue([self.user2.followers count] == 0, @"user 2 has no followers initially");
    
    [self.user1 follow:self.user2];
    
    STAssertTrue([self.user1.following count] == 1, @"user 1 should now follow 1 user");
    STAssertTrue([self.user2.followers count] == 1, @"user 2 should now have 1 follower");
    
    [self.user1 follow:self.user2];
    
    STAssertTrue([self.user1.following count] == 1, @"user 1 should still follow 1 user");
    STAssertTrue([self.user2.followers count] == 1, @"user 2 should still have 1 follower");
}

- (void)testUnfollow
{
    [self.user1 follow:self.user2];
    [self.user1 unfollow:self.user2];
    
    STAssertTrue([self.user1.following count] == 0, @"user 1 following nobody");
    STAssertTrue([self.user2.followers count] == 0, @"user 2 should have no followers");
    
    [self.user1 unfollow:self.user2];
    
    STAssertTrue([self.user1.following count] == 0, @"user 1 still following nobody");
    STAssertTrue([self.user2.followers count] == 0, @"user 2 should still have no followers");
}

- (void)testTweet
{
    Tweet *tweet = [[Tweet alloc] init];
    STAssertTrue([self.user1.tweets count] == 0, @"tweet count start at 0");
    [self.user1 tweet:tweet];
    STAssertTrue([self.user1.tweets count] == 1, @"tweet count should now equal 1");
}

@end
