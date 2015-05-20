//
//  CWGroup.h
//  CWKmeans
//
//  Created by LiChen Wei on 2015/3/28.
//  Copyright (c) 2015年 LiChen Wei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWGroup : NSObject
{
    
}
@property (nonatomic, retain)NSMutableArray *groupPoints;
@property (nonatomic, retain)NSMutableArray *groupMeanPoint;

- (id)init;
- (id)initWithArray:(NSMutableArray *)arrayPoint;
- (void)addArray:(NSMutableArray *)arrayPoint;
- (void)calculateMean;
@end
