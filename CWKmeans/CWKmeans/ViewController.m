//
//  ViewController.m
//  CWKmeans
//
//  Created by LiChen Wei on 2015/3/28.
//  Copyright (c) 2015年 LiChen Wei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    oneGroup = [[CWGroup alloc]init];
    twoGroup = [[CWGroup alloc]init];
    newPoints = [[NSMutableArray alloc]initWithObjects:@[@5, @4], @[@3, @4], @[@2, @5], nil];
    
    
    NSMutableArray *arrayOne = [[NSMutableArray alloc]initWithObjects:@[@1, @1], @[@1, @2], @[@2, @2], @[@3, @2], @[@3, @1], nil];
    [oneGroup addArray:arrayOne];
    NSMutableArray *arrayTwo = [[NSMutableArray alloc]initWithObjects:@[@6, @4], @[@7, @6], @[@5, @6], @[@6, @5], nil];
    [twoGroup addArray:arrayTwo];
    
    [self calculateMeans];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)calculateMeans{
    [oneGroup calculateMean];
    [twoGroup calculateMean];
    
    for (NSArray *newPoint in newPoints) {
        double distanceOne = 0.0,distanceTwo = 0.0;
        
        distanceOne = sqrt(pow([[newPoint objectAtIndex:0] doubleValue] - [[oneGroup.groupMeanPoint objectAtIndex:0] doubleValue],2) + pow([[newPoint objectAtIndex:1] doubleValue] - [[oneGroup.groupMeanPoint  objectAtIndex:1] doubleValue],2));
        distanceTwo = sqrt(pow([[newPoint objectAtIndex:0] doubleValue] - [[twoGroup.groupMeanPoint objectAtIndex:0] doubleValue],2) + pow([[newPoint objectAtIndex:1] doubleValue] - [[twoGroup.groupMeanPoint objectAtIndex:1] doubleValue],2));
        
        if (distanceOne > distanceTwo) {
            [oneGroup.groupPoints addObject:newPoint];
        }else if (distanceOne > distanceTwo){
            [twoGroup.groupPoints addObject:newPoint];
        }else{
            [oneGroup.groupPoints addObject:newPoint];
            [twoGroup.groupPoints addObject:newPoint];
        }
    }
    
    NSLog(@"\n oneGroup:%@\ntwoGroup:%@",oneGroup.groupPoints,twoGroup.groupPoints);
}

@end
