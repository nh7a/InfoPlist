//
//  InfoPlistTests.swift
//  InfoPlistTests
//
//  Created by Naoki Hiroshima on 10/2/17.
//

import XCTest
@testable import InfoPlist

class InfoPlistTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let url = Bundle.allBundles.flatMap { $0.url(forResource: "IosAppInfo", withExtension: "plist") }.first!
        let data = try! Data(contentsOf: url)

        let p: InfoPlist! = try? PropertyListDecoder().decode(InfoPlist.self, from: data)
        XCTAssertNotNil(p)
        
        XCTAssertEqual(p.bundleName, "Foo")
        XCTAssertEqual(p.bundleExecutable, "Foo")
        XCTAssertEqual(p.bundleIdentifier, "org.example.Foo")
        XCTAssertEqual(p.bundleVersion, "1")
        XCTAssertEqual(p.bundleShortVersionString, "1.0")
        XCTAssertEqual(p.bundleDevelopmentRegion, "en")
        XCTAssertEqual(p.bundlePackageType, "APPL")
        XCTAssertEqual(p.bundleSupportedPlatforms ?? [], ["iPhoneSimulator"])
        XCTAssertEqual(p.bundleInfoDictionaryVersion, "6.0")
        
        XCTAssertEqual(p.deviceFamily, [1])
        XCTAssertEqual(p.launchStoryboardName, "LaunchScreen")
        XCTAssertEqual(p.requiredDeviceCapabilities, ["armv7"])
        XCTAssertEqual(p.supportedInterfaceOrientations, ["UIInterfaceOrientationPortrait"])
        XCTAssertEqual(p.requiresIPhoneOS, true)
        XCTAssertNil(p.buildMachineOSBuild)
        XCTAssertEqual(p.minimumOSVersion, "10.0")
        XCTAssertEqual(p.mainStoryboardFile, "Main")
        
        XCTAssertNil(p.platformName)
        XCTAssertNil(p.platformVersion)
        XCTAssertNil(p.xcode)
        XCTAssertNil(p.compiler)
        XCTAssertNil(p.platformBuild)
        XCTAssertNil(p.sdkBuild)
        XCTAssertNil(p.sdkName)
        XCTAssertNil(p.xcodeBuild)
    }
    
}
