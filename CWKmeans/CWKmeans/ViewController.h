//
//  ViewController.h
//  CWKmeans
//
//  Created by LiChen Wei on 2015/3/28.
//  Copyright (c) 2015年 LiChen Wei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWGroup.h"

@interface ViewController : UIViewController
{
    CWGroup *oneGroup,*twoGroup;
    NSMutableArray *newPoints;
}

@end

