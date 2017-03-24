//
//  ViewController.m
//  testCam
//
//  Created by Яна и Папа on 06.03.17.
//  Copyright © 2017 Яна и Папа. All rights reserved.
//

#import "ViewController.h"
//#import <AVFoundation/AVFoundation.h>
#import "modinit.h"

@interface ViewController () 
{
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView * vww = [modinit streaminit:self.view.frame.size.height/2 withFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) ] ;
    [self.view addSubview:vww];

//    NSArray *Arr;
//    NSCountedSet *Nset;
//    
//    Arr=[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"2",@"1", nil];
//    Nset=[NSCountedSet setWithObjects:@"1",@"2",@"3",@"3",@"5",@"5", nil];
//    
//    NSLog(@"%@",Arr);
//    NSLog(@"%@",Nset);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
