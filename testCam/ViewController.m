//
//  ViewController.m
//  testCam
//
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
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

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
