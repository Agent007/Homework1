//
//  TwitterUser.m
//  Homework1
//
//  Created by Jeffrey Lam on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwitterUser.h"

@implementation TwitterUser

@synthesize following = _following, followers = _followers, tweets = _tweets;

- (void)follow:(TwitterUser *)user
{
    NSMutableSet *mutableSet = [NSMutableSet setWithSet:self.following];
    [mutableSet addObject:user];
    self.following = mutableSet;
    
    mutableSet = [NSMutableSet setWithSet:user.followers];
    [mutableSet addObject:self];
    user.followers = mutableSet;
}

- (void)unfollow:(TwitterUser *)user
{
     NSMutableSet *mutableSet = [NSMutableSet setWithSet:self.following];
    [mutableSet removeObject:user];
    self.following = mutableSet;
    
    mutableSet = [NSMutableSet setWithSet:user.followers];
    [mutableSet removeObject:self];
    user.followers = mutableSet;
}

- (void)tweet:(Tweet *)tweet
{
    NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:self.tweets];
    [mutableArray addObject:tweet];
    self.tweets = mutableArray;
}

@end
