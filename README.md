# KnockKnock

[![CI Status](http://img.shields.io/travis/Paolo Tagliani/KnockKnock.svg?style=flat)](https://travis-ci.org/Paolo Tagliani/Knock)
[![Version](https://img.shields.io/cocoapods/v/Knock.svg?style=flat)](http://cocoapods.org/pods/KnockKnock)
[![License](https://img.shields.io/cocoapods/l/Knock.svg?style=flat)](http://cocoapods.org/pods/KnockKnock)
[![Platform](https://img.shields.io/cocoapods/p/Knock.svg?style=flat)](http://cocoapods.org/pods/KnockKnock)

![KnockKnock](https://raw.githubusercontent.com/mobilejazz/metadata/master/images/banners/mobile-jazz-knockknock-ios.jpg)

## Usage

### Start monitoring
To start monitoring reachability, just call the method `awake` on the shared reachability instance. Usually in your app delegate you start monitoring the network status:

```objc
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *) launchOptions {
    //Started monitoring reachability
    [[Knock knock] awake];
   
   return YES;
}    
```

This method automatically start looking for reachability on *Google.com*. You could start monitoring reachability on a custom URL by calling the following method:

```
[[Knock knock] awakeWithHost:YOUR_HOST];
```

### Check reachability

You can check reachability at any time by retrieving the shared reachability object and calling the 
method `whosThere:(KKActor)actor`, passing the desired reachability.

```objc
typedef NS_OPTIONS(NSUInteger, KKActor) {
    KKSomeone,
    KKWifi,
    KKCellular
};
```

##Example project


To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Installation

Knock is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KnockKnock"
```

## Project Maintainer

This open source project is maintained by [Paolo Tagliani](https://github.com/pablosproject).

## License

    Copyright 2016 Mobile Jazz

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

