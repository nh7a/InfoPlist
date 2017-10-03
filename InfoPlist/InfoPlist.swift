//
//  InfoPlist.swift
//  InfoPlist
//
//  Created by Naoki Hiroshima on 10/2/17.
//

public struct InfoPlist: Decodable {
    public let bundleName: String
    public let bundleExecutable: String
    public let bundleIdentifier: String
    public let bundleVersion: String
    public let bundleShortVersionString: String
    public let bundleDevelopmentRegion: String
    public let bundlePackageType: String
    public let bundleSupportedPlatforms: [String]?
    public let bundleInfoDictionaryVersion: String
    
    public let deviceFamily: [Int]
    public let launchStoryboardName: String
    public let requiredDeviceCapabilities: [String]
    public let supportedInterfaceOrientations: [String]
    public let requiresIPhoneOS: Bool
    public let buildMachineOSBuild: String?
    public let minimumOSVersion: String
    public let mainStoryboardFile: String?
    
    // Development environment
    public let platformName: String?
    public let platformVersion: String?
    public let xcode: String?
    public let compiler: String?
    public let platformBuild: String?
    public let sdkBuild: String?
    public let sdkName: String?
    public let xcodeBuild: String?
    
    enum CodingKeys: String, CodingKey {
        case bundleName = "CFBundleName"  // Foo
        case bundleExecutable = "CFBundleExecutable"  // Foo
        case bundleIdentifier = "CFBundleIdentifier"  // com.example.Foo
        case bundleVersion = "CFBundleVersion"  // 1
        case bundleShortVersionString = "CFBundleShortVersionString" // 1.0
        case bundleDevelopmentRegion = "CFBundleDevelopmentRegion"  // en
        case bundlePackageType = "CFBundlePackageType"  // APPL
        case bundleSupportedPlatforms = "CFBundleSupportedPlatforms"  // [ iPhoneSimulator ]
        case bundleInfoDictionaryVersion = "CFBundleInfoDictionaryVersion"  // 6.0
        
        case deviceFamily = "UIDeviceFamily"  // [ 1, 2 ]
        case launchStoryboardName = "UILaunchStoryboardName"  // LaunchScreen
        case requiredDeviceCapabilities = "UIRequiredDeviceCapabilities"  // [ armv7 ]
        case supportedInterfaceOrientations = "UISupportedInterfaceOrientations"  // [ UIInterfaceOrientationPortrait ]
        case requiresIPhoneOS = "LSRequiresIPhoneOS"  // 1
        case buildMachineOSBuild = "BuildMachineOSBuild"  // 17A365
        case minimumOSVersion = "MinimumOSVersion"  // 11.0
        case mainStoryboardFile = "UIMainStoryboardFile"  // Main
        
        // Development environment
        case platformName = "DTPlatformName"  // iphonesimulator
        case platformVersion = "DTPlatformVersion"  // 11.0
        case xcode = "DTXcode"  // 0900
        case compiler = "DTCompiler"  // com.apple.compilers.llvm.clang.1_0
        case platformBuild = "DTPlatformBuild"
        case sdkBuild = "DTSDKBuild"  // 15A372
        case sdkName = "DTSDKName"  // iphonesimulator11.0
        case xcodeBuild = "DTXcodeBuild"  // 9A235
    }
}

public extension Bundle {
    static let infoPlist: InfoPlist? = {
        guard let url = main.url(forResource: "Info", withExtension: "plist"), let data = try? Data(contentsOf: url) else { return nil }
        do {
            return try PropertyListDecoder().decode(InfoPlist.self, from: data)
        } catch {
            print("BUG: \(error)")
        }
        return nil
    }()
}
