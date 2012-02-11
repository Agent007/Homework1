//
//  Tweet.h
//  Homework1
//
//  Created by Jeffrey Lam on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;
@property (strong, nonatomic) NSDate *timestamp;

- (id)initWithContents:(NSString *)contents latitude:(double)latitude longitude:(double)longitude;
- (id)initWithContents:(NSString *)contents;

@end
