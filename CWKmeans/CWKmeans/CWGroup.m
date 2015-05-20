//
//  CWGroup.m
//  CWKmeans
//
//  Created by LiChen Wei on 2015/3/28.
//  Copyright (c) 2015年 LiChen Wei. All rights reserved.
//

#import "CWGroup.h"

@implementation CWGroup

- (id)init{
    self = [super init];
    if (self) {
        _groupPoints = [[NSMutableArray alloc]init];
        _groupMeanPoint = [[NSMutableArray alloc]init];
    }
    return self;
}

- (id)initWithArray:(NSMutableArray *)arrayPoint{
    self = [super init];
    if (self) {
        _groupPoints = [[NSMutableArray alloc]init];
        _groupMeanPoint = [[NSMutableArray alloc]init];
        for (NSArray *ary in arrayPoint)
            [_groupPoints addObject:ary];
        
    }
    return self;
}

- (void)addArray:(NSMutableArray *)arrayPoint{
    for (NSArray *ary in arrayPoint) {
        [_groupPoints addObject:ary];
    }
}

- (void)calculateMean{
    
    if ([_groupPoints count] != 0) {
        double meanX = 0.0,meanY = 0.0;
        for (NSMutableArray *arrayPoint in _groupPoints) {
            meanX = meanX + [[arrayPoint objectAtIndex:0] doubleValue];
            meanY = meanY + [[arrayPoint objectAtIndex:1] doubleValue];
        }
        [_groupMeanPoint removeAllObjects];
        [_groupMeanPoint addObject:[NSNumber numberWithDouble:meanX/[_groupPoints count]]];
        [_groupMeanPoint addObject:[NSNumber numberWithDouble:meanY/[_groupPoints count]]];
    }
}

@end
