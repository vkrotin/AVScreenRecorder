//
//  AVViewController.m
//  AVScreenRecorder
//
//  Created by Aleksey Anisimov on 09/15/2016.
//  Copyright (c) 2016 Aleksey Anisimov. All rights reserved.
//

#import "AVViewController.h"

@interface AVViewController ()

@property (weak, nonatomic) IBOutlet UITextView *testTextView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *recordItem;

@end

@implementation AVViewController

-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.testTextView scrollRangeToVisible:NSMakeRange(0, 0)];
    
    _recordItem.title = [AVScreenRecorder sharedRecorder].isRecord ?  @"IS RECORD" : @"Start Record";
}


- (IBAction)startRecord:(UIBarButtonItem *)sender {
    
    if (sender.tag == 0){
        [[AVScreenRecorder sharedRecorder] startRecordCompletion:^(BOOL complete, NSError *error){
            sender.tag = complete ? 1 : 0;
            sender.title = complete ? @"IS RECORD" : @"Start Record";
            if (error)
                [self showError:error];
        }];
    } else{
        [[AVScreenRecorder sharedRecorder] stopRecordCompletion:^(BOOL complete, NSError *error){
            sender.tag = complete ? 0 : 1;
            sender.title = complete ? @"Start Record" : @"IS RECORD";
            if (error)
                [self showError:error];
        }];
    }
    
}

-(IBAction) startStopRecord:(UIButton *) button{
    
}

-(void) showError:(NSError *) error{
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Error"
                                 message:error.localizedDescription
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* okButton = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   [alert dismissViewControllerAnimated:YES completion:nil];
                               }];
    [alert addAction:okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}



@end
