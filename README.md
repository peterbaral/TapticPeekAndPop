# TapticPeekAndPop

A very basic example of how to call the "Peek" and "Poke" haptic feedback. 
It's private actuation methods are hidden in `UIDevice` and `_UITapticEngine` classes and are called by `UIPreviewInteractionController` when appropriate.

## Disclaimer

**When you are using Apple Private API's you are taking all responsibility for any damage done to your device. That includes running and testing all code, contained in this repository.
Using private API’s may cause your application to be rejected on the App Store and should not be used in production, as it might change in the future.**

## Research

The methods and classes for Taptic Engine can be found using [**Runtime Headers**](https://github.com/nst/iOS-Runtime-Headers), look for `UIDevice` and `_UITapticEngine` classes.


## Requirements

### Build

iOS 9 SDK, Xcode 7

### Runtime

iOS 9 (and an iPhone 6s/6s Plus). Doesn't work in the Xcode simulator!

# Thanks

A big thank you goes to Dal Rupnik for his research
[**http://unifiedsense.com/development/using-taptic-engine-on-ios.html**](http://unifiedsense.com/development/using-taptic-engine-on-ios.html).

Contact
======

Peter Baral

- [@peterbaral](https://twitter.com/peterbaral) on **Twitter**
- [peter.baral@medienwerkstatt-online.de](mailto:peter.baral@medienwerkstatt-online.de)

License
======

**TapticPeekAndPop** is released under the **MIT** license. See [LICENSE](https://github.com/peterbaral/TapticPeekAndPop/blob/master/LICENSE.txt) file for more information.
