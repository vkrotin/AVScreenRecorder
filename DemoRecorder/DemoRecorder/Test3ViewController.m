//
//  Test3ViewController.m
//  DemoRecorder
//
//  Created by Aleksey Anisimov on 14.09.16.
//  Copyright © 2016 Aleksey Anisimov. All rights reserved.
//

#import "Test3ViewController.h"
#import <AVScreenRecord/AVScreenRecorder.h>

@interface Test3ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation Test3ViewController



#pragma mark UIScrollViewDelegate

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return _imageView;
}

-(void) scrollViewDidZoom:(UIScrollView *)scrollView
{
    scrollView.contentSize = _imageView.frame.size;
    [self centerContents:scrollView];
}

- (void)centerContents:(UIScrollView *) scrollView
{
    CGSize boundsSize = scrollView.bounds.size;
    CGRect contentsFrame = _imageView.frame;
    
    if (contentsFrame.size.width < boundsSize.width) {
        contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0f;
    } else {
        contentsFrame.origin.x = 0.0f;
    }
    
    if (contentsFrame.size.height < boundsSize.height) {
        contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0f;
    } else {
        contentsFrame.origin.y = 0.0f;
    }
    
    _imageView.frame = contentsFrame;
}
- (IBAction)stopRecord:(id)sender {
    [[AVScreenRecorder sharedRecorder] stopRecordCompletion:^(BOOL complete, NSError *error){
        if (complete)
            [self.navigationController popToRootViewControllerAnimated:YES];
    }];
    
}

@end
