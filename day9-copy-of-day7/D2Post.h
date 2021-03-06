//
//  D2Post.h
//  day2
//
//  Created by John Bender on 9/11/13.
//  Copyright (c) 2013 General UI, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface D2Post : NSObject <UIActivityItemSource>

@property (nonatomic, copy) NSString *remoteId;

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, strong) NSDate *timeStamp;

@property (nonatomic, strong) NSString *photo;
@property (nonatomic, strong) NSString *thumbnail;

@end
