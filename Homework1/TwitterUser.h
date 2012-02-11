//
//  TwitterUser.h
//  Homework1
//
//  Created by Jeffrey Lam on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tweet.h"

@interface TwitterUser : NSObject

@property (strong, nonatomic) NSSet *following;
@property (strong, nonatomic) NSSet *followers;
@property (strong, nonatomic) NSArray *tweets;

- (void)follow:(TwitterUser *)user;
- (void)unfollow:(TwitterUser *)user;
- (void)tweet:(Tweet *)tweet;

@end
