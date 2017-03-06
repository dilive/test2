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
    
    UIView * vww = [[modinit alloc] streaminit:self.view.frame.size.height/2 withFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) ] ;
    [self.view addSubview:vww];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
