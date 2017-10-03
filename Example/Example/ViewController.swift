//
//  ViewController.swift
//  Example
//
//  Created by Naoki Hiroshima on 10/2/17.
//

import UIKit
import InfoPlist

class ViewController: UIViewController {

    @IBOutlet private var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let p = Bundle.infoPlist else { return }
        textView.text = """
            bundleName: \(p.bundleName)
            bundleExecutable: \(p.bundleExecutable)
            bundleIdentifier: \(p.bundleIdentifier)
            bundleVersion: \(p.bundleVersion)
            bundleShortVersionString: \(p.bundleShortVersionString)
            bundleDevelopmentRegion: \(p.bundleDevelopmentRegion)
            bundlePackageType: \(p.bundlePackageType)
            bundleSupportedPlatforms: \(p.bundleSupportedPlatforms ?? [])
            bundleInfoDictionaryVersion: \(p.bundleInfoDictionaryVersion)
        
            deviceFamily: \(p.deviceFamily)
            launchStoryboardName: \(p.launchStoryboardName)
            requiredDeviceCapabilities: \(p.requiredDeviceCapabilities)
            supportedInterfaceOrientations: \(p.supportedInterfaceOrientations)
            requiresIPhoneOS: \(p.requiresIPhoneOS)
            buildMachineOSBuild: \(p.buildMachineOSBuild ?? "N/A")
            minimumOSVersion: \(p.minimumOSVersion)
            mainStoryboardFile: \(p.mainStoryboardFile ?? "N/A")
        
            platformName: \(p.platformName ?? "N/A")
            platformVersion: \(p.platformVersion ?? "N/A")
            xcode: \(p.xcode ?? "N/A")
            compiler: \(p.compiler ?? "N/A")
            platformBuild: \(p.platformBuild ?? "N/A")
            sdkBuild: \(p.sdkBuild ?? "N/A")
            sdkName: \(p.sdkName ?? "N/A")
            xcodeBuild: \(p.xcodeBuild ?? "N/A")
        """
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

