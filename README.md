# Gharial iOS SDK

Swift Package Manager distribution of the Gharial iOS SDK (binary XCFrameworks).

```swift
.package(url: "https://github.com/gharialdata/ios-spm.git", branch: "main")
```

Add the `Gharial` product to your target, then:

```swift
import Gharial

ConsentManager.shared.set(granted: true)
Gharial.initialize(appKey: "<your-app-key>")
```

Requires iOS 15 or later. Integration guide: https://docs.gharialdata.com/ios/setup-sdk
