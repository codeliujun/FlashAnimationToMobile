//
//  TestFlashViewController.m
//  FlashView
//
//  Created by kaso on 1/9/16.
//  Copyright © 2016年 kaso. All rights reserved.
//

#import "TestFlashViewController.h"
#import "FlashView.h"
#import "FlashViewNew.h"

/**
 *  测试FlashView
 */

@interface TestFlashViewController ()

@end

@implementation TestFlashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self testFlashViewNew];
    //    [self testFlashView];
}

-(void) testFlashViewNew{
    FlashViewNew *flashViewNew = [[FlashViewNew alloc] initWithFlashName:@"bieshu"];
    flashViewNew.frame = self.view.frame;
    [self.view addSubview:flashViewNew];
    [flashViewNew play:flashViewNew.animNames.firstObject loopTimes:FlashLoopTimeForever];
    
    [self performSelector:@selector(loadCar:) withObject:flashViewNew afterDelay:3];
}

-(void) testFlashView{
    FlashView *flashView = [[FlashView alloc] initWithFlashName:@"bieshu"];
    flashView.frame = self.view.frame;// CGRectMake(100, 100, 200, 500);
    flashView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:flashView];
    [flashView play:flashView.animNames.firstObject  loopTimes:FlashLoopTimeForever];
    
    [self performSelector:@selector(loadCar:) withObject:flashView afterDelay:3];
}

-(void) reload:(id)flashView{
    [flashView reload:@"heiniao" andAnimDir:nil];
    [flashView play:@"atk" loopTimes:FlashLoopTimeForever];
    [self performSelector:@selector(loadCar:) withObject:flashView afterDelay:3];
}

-(void) loadCar:(id)flashView{
    [flashView reload:@"testDB" andAnimDir:nil];
    [flashView play:@"applanbo" loopTimes:FlashLoopTimeForever];
    [self performSelector:@selector(reload:) withObject:flashView afterDelay:3];
}


@end