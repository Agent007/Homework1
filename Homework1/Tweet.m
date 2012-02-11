//
//  Tweet.m
//  Homework1
//
//  Created by Jeffrey Lam on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

@synthesize contents = _contents, latitude = _latitude, longitude = _longitude, timestamp = _timestamp;

- (id)initWithContents:(NSString *)contents latitude:(double)latitude longitude:(double)longitude
{
    if (self = [super init]) {
        self.contents = contents;
        self.latitude = latitude;
        self.longitude = longitude;
    }
    return self;
}

- (id)initWithContents:(NSString *)contents
{
    return [self initWithContents:contents latitude:0.0 longitude:0.0];
}

- (id)init
{
    return [self initWithContents:nil];
}

- (void)setContents:(NSString *)contents
{
    if ([contents length] <= 140) {
        _contents = contents;
    }
}

- (void)setLatitude:(double)latitude
{
    if ((latitude <= 90.0) && (latitude >= -90.0)) {
        _latitude = latitude;
    }
}

- (void)setLongitude:(double)longitude
{
    if ((longitude <= 180.0) && (longitude >= -180.0)) {
        _longitude = longitude;
    }
}

@end
