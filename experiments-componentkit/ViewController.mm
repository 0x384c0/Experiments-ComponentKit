//
//  ViewController.m
//  experiments-componentkit
//
//  Created by Andrew Ashurow on 20.10.16.
//  Copyright © 2016 Andrew Ashurow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <CKComponentProvider>

@end

@implementation ViewController{
    CKComponentHostingView *_hostingView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _hostingView = [[CKComponentHostingView alloc]
                                           initWithComponentProvider:[self class]
                                           sizeRangeProvider:[CKComponentFlexibleSizeRangeProvider providerWithFlexibility:CKComponentSizeRangeFlexibleHeight]];
    [self.view addSubview:_hostingView];
    [_hostingView updateModel:@"Text Label" mode:CKUpdateModeSynchronous];
}


- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    const CGSize labelSize = [_hostingView sizeThatFits:{
        .width = CGRectGetWidth(self.view.bounds),
        .height = CGRectGetHeight(self.view.bounds)
    }];
    
    _hostingView.frame = (CGRect) {
        .origin = {.x = 0, .y = self.topLayoutGuide.length},
        .size = {.width = labelSize.width, .height = labelSize.height}
    };
}

#pragma mark - CKComponentProvider

+ (CKComponent *) componentForModel:(id<NSObject>)model context:(id<NSObject>)context{
    return [GoogleImageComponent newWithText: [NSString stringWithFormat:@"%@", model]];
}

@end
