//
//  UIAppearance+Swift.m
//  Chameleon
//
//  Created by Vicc Alexander on 11/26/15.
//  Copyright © 2015 Vicc Alexander. All rights reserved.
//

#import "UIAppearance+Swift.h"

@implementation UIView (UIViewAppearance_Swift)

+ (instancetype)appearanceWhenContainedWithin: (NSArray *)containers {
    
    NSUInteger count = containers.count;
    NSAssert(count <= 10, @"The count of containers greater than 10 is not supported.");
    
    NSArray *appearanceContainers = @[
        count > 0 ? containers[0] : [NSNull null],
        count > 1 ? containers[1] : [NSNull null],
        count > 2 ? containers[2] : [NSNull null],
        count > 3 ? containers[3] : [NSNull null],
        count > 4 ? containers[4] : [NSNull null],
        count > 5 ? containers[5] : [NSNull null],
        count > 6 ? containers[6] : [NSNull null],
        count > 7 ? containers[7] : [NSNull null],
        count > 8 ? containers[8] : [NSNull null],
        count > 9 ? containers[9] : [NSNull null]
    ];
    return [self appearanceWhenContainedInInstancesOfClasses:appearanceContainers];
}

@end
