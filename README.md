# InfoPlist

With Swift 4's `Decodable` and `PropertyListDecoder`, `Bundle.main.infoDictionary["CFBundleVersion"] as? String` seems too silly. Why don't we read it in a strictly typed way?
Something more Swift-like?

## Usage

```swift
import InfoPlist

print("""
    bundleName: \(Bundle.infoPlist.bundleName)
    bundleExecutable: \(Bundle.infoPlist.bundleExecutable)
    bundleIdentifier: \(Bundle.infoPlist.bundleIdentifier)
    bundleVersion: \(Bundle.infoPlist.bundleVersion)
    bundleShortVersionString: \(Bundle.infoPlist.bundleShortVersionString)
    bundleDevelopmentRegion: \(Bundle.infoPlist.bundleDevelopmentRegion)
    bundlePackageType: \(Bundle.infoPlist.bundlePackageType)
    bundleSupportedPlatforms: \(Bundle.infoPlist.bundleSupportedPlatforms)
    bundleInfoDictionaryVersion: \(Bundle.infoPlist.bundleInfoDictionaryVersion)

    deviceFamily: \(Bundle.infoPlist.deviceFamily)
    launchStoryboardName: \(Bundle.infoPlist.launchStoryboardName)
    requiredDeviceCapabilities: \(Bundle.infoPlist.requiredDeviceCapabilities)
    supportedInterfaceOrientations: \(Bundle.infoPlist.supportedInterfaceOrientations)
    requiresIPhoneOS: \(Bundle.infoPlist.requiresIPhoneOS)
    buildMachineOSBuild: \(Bundle.infoPlist.buildMachineOSBuild)
    minimumOSVersion: \(Bundle.infoPlist.minimumOSVersion)
    mainStoryboardFile: \(Bundle.infoPlist.mainStoryboardFile)

    platformName: \(Bundle.infoPlist.platformName)
    platformVersion: \(Bundle.infoPlist.platformVersion)
    xcode: \(Bundle.infoPlist.xcode)
    compiler: \(Bundle.infoPlist.compiler)
    platformBuild: \(Bundle.infoPlist.platformBuild)
    sdkBuild: \(Bundle.infoPlist.sdkBuild)
    sdkName: \(Bundle.infoPlist.sdkName)
    xcodeBuild: \(Bundle.infoPlist.xcodeBuild)
""")
```

## Installation

## Carthage
You can install InfoPlist via [Carthage](https://github.com/Carthage/Carthage) by adding the following line to your `Cartfile`:

```
github "nh7a/InfoPlist"
```

## Swift Package Manager
Or maybe via [Swift Package Manager](https://swift.org/package-manager/) by adding the following line to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
  .Package(url: "https://github.com/nh7a/InfoPlist.git", majorVersion: 1)
]
```

## Requirements

* Xcode 9.0
* Swift 4.0

## License

Attributed is free software, and may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: /LICENSE
