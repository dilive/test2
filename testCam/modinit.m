//
//  modinit.m
//  testCam
//
//  Created by Яна и Папа on 06.03.17.
//  Copyright © 2017 Яна и Папа. All rights reserved.
//

#import "modinit.h"
#import <AVFoundation/AVFoundation.h>

@implementation modinit


+ (UIView *) streaminit : (float) tran withFrame: (CGRect) frm
{
    UIView * view = [[UIView alloc]initWithFrame:frm];
    UIImageView * imgVwB = [[UIImageView alloc] initWithFrame:frm];
    [view addSubview:imgVwB];
    imgVwB.backgroundColor = [UIColor brownColor];

AVCaptureSession *session = [[AVCaptureSession alloc] init];
session.sessionPreset = AVCaptureSessionPresetHigh;
AVCaptureVideoPreviewLayer * captPrvw = [[AVCaptureVideoPreviewLayer alloc] initWithSession:session];
[captPrvw setVideoGravity:AVLayerVideoGravityResizeAspectFill];

CAReplicatorLayer * repLayer = [CAReplicatorLayer layer];
repLayer.frame = imgVwB.bounds;
repLayer.instanceCount = 2;
repLayer.instanceTransform = CATransform3DMakeTranslation(0, tran, 20);

[repLayer addSublayer:captPrvw];
repLayer.instanceAlphaOffset = 0;
repLayer.preservesDepth=NO;
repLayer.instanceBlueOffset = -0.2;
repLayer.instanceRedOffset = -1;
repLayer.instanceGreenOffset = -0.5;

[imgVwB.layer addSublayer:repLayer];
[captPrvw setFrame:imgVwB.bounds];

NSArray *devices = [AVCaptureDevice devices];
AVCaptureDevice *frontCamera = nil;
AVCaptureDevice *backCamera = nil;

for (AVCaptureDevice * device in devices) {
    
    if ([device hasMediaType:AVMediaTypeVideo]) {
        
        if ([device position] == AVCaptureDevicePositionBack) {
            backCamera = device;
        }
        else {
            frontCamera = device;
        }
    }
}

if (!frontCamera) {
    NSError *error = nil;
    AVCaptureDeviceInput *input = [AVCaptureDeviceInput deviceInputWithDevice:backCamera error:&error];
    if (!input) {
        NSLog(@"ERROR: open camera: %@", error);
    }
    [session addInput:input];
}

if (frontCamera) {
    NSError *error = nil;
    AVCaptureDeviceInput *input = [AVCaptureDeviceInput deviceInputWithDevice:frontCamera error:&error];
    if (!input) {
        NSLog(@"ERROR: open camera: %@", error);
    }
    [session addInput:input];
}

[session startRunning];
    
    
    
    return view;
}

@end
