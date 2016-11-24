# KnockKnock

[![CI Status](http://img.shields.io/travis/Paolo Tagliani/KnockKnock.svg?style=flat)](https://travis-ci.org/Paolo Tagliani/Knock)
[![Version](https://img.shields.io/cocoapods/v/Knock.svg?style=flat)](http://cocoapods.org/pods/KnockKnock)
[![License](https://img.shields.io/cocoapods/l/Knock.svg?style=flat)](http://cocoapods.org/pods/KnockKnock)
[![Platform](https://img.shields.io/cocoapods/p/Knock.svg?style=flat)](http://cocoapods.org/pods/KnockKnock)

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

## License

Knock is available under the Apache license. See the LICENSE file for more info.
