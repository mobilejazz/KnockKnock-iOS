# MJReachability

[![CI Status](http://img.shields.io/travis/Paolo Tagliani/MJReachability.svg?style=flat)](https://travis-ci.org/Paolo Tagliani/MJReachability)
[![Version](https://img.shields.io/cocoapods/v/MJReachability.svg?style=flat)](http://cocoapods.org/pods/MJReachability)
[![License](https://img.shields.io/cocoapods/l/MJReachability.svg?style=flat)](http://cocoapods.org/pods/MJReachability)
[![Platform](https://img.shields.io/cocoapods/p/MJReachability.svg?style=flat)](http://cocoapods.org/pods/MJReachability)

## Usage

### Start monitoring
To start monitoring reachability, just call the method `awake` on the shared reachability instance. Usually in your app delegate you start monitoring the network status:

```objc
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *) launchOptions {
    //Started monitoring reachability
    [[MJReachability sharedReachability] awake];
   
   return YES;
}    
```

This method automatically start looking for reachability on *Google.com*. You could start monitoring reachability on a custom URL by calling the following method:

```
[[MJReachability sharedReachability] awakeWithHost:YOUR_HOST];
```

### Check reachability

You can check reachability at any time by retrieving the shared reachability object and calling the 
method `isReachableVia:(MJReachabilityType)type`, passing the desired reachability.

```objc
typedef NS_OPTIONS(NSUInteger, MJReachabilityType) {
    MJReachabilityTypeAny,
    MJReachabilityTypeWifi,
    MJReachabilityTypeCellular
};
```

##Example project


To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Installation

MJReachability is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MJReachability"
```

## Author

Paolo Tagliani, paolo@mobilejazz.com

## License

MJReachability is available under the MIT license. See the LICENSE file for more info.
