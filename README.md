# AVScreenRecorder

[![Version](https://img.shields.io/cocoapods/v/AVScreenRecorder.svg?style=flat)](http://cocoapods.org/pods/AVScreenRecorder)
[![License](https://img.shields.io/cocoapods/l/AVScreenRecorder.svg?style=flat)](http://cocoapods.org/pods/AVScreenRecorder)
[![Platform](https://img.shields.io/cocoapods/p/AVScreenRecorder.svg?style=flat)](http://cocoapods.org/pods/AVScreenRecorder)

This framework is designed to record video from the app's screen. For testing, debugging errors in applications, and demo presentations. You can crop the recorded video, save to device, send via email or social networks.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage
```objective-c
#import <AVScreenRecorder/AVScreenRecorder.h>

...
// Start Record
  [[AVScreenRecorder sharedRecorder] startRecordCompletion:^(BOOL complete, NSError *error){
      // do something out code
  }];
// Stop Record
  [[AVScreenRecorder sharedRecorder] stopRecordCompletion:^(BOOL complete, NSError *error){
      // do something out code
  }];
```

## Requirements

## Installation Pods

AVScreenRecorder is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AVScreenRecorder' 
```

## Other installation way

Add AVScreenRecorder.framework to your Framework.

## Author

Aleksey Anisimov, vkrotin.ios@gmail.com

## License

AVScreenRecorder is available under the MIT license. See the LICENSE file for more info.
