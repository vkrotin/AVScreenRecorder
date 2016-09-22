//
//  ScreenRecorder.h
//  ScreenRecorder
//
//  Created by Aleksey Anisimov on 13.09.16.
//  Copyright © 2016 Aleksey Anisimov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVScreenRecorder : NSObject


@property(readonly, getter=isRecord) BOOL record;

+ (instancetype _Nullable)sharedRecorder;

- (void)startRecordCompletion:(void(^_Nullable)(BOOL finished, NSError *_Nullable error)) completion;
- (void)stopRecordCompletion:(void(^_Nullable)(BOOL finished, NSError *_Nullable error)) completion;

@end

 
