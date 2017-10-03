# InfoPlist

With Swift 4's Decodable and PropertyListDecoder, `Bundle.main.infoDictionary["CFBundleVersion"] as? String` seems too silly. Why don't we read it in strictly typed Swift way?

## Usage

```swift
import InfoPlist

print("bundleVersion: \(Bundle.infoPlist.bundleVersion)")
print("bundleShortVersionString: \(Bundle.infoPlist.bundleShortVersionString)")
```

## Installation

You can install InfoPlist via [Carthage](https://github.com/Carthage/Carthage) by adding the following line to your `Cartfile`:

```
github "nh7a/InfoPlist"
```
