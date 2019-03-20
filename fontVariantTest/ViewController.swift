//
//  ViewController.swift
//  fontVariantTest
//
//  Created by Charles Cruzan on 3/20/19.
//  Copyright © 2019 Charles Cruzan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Define a view
        var popup:UIView!
        popup = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        let label = UILabel(frame: CGRect(x: 10, y: 200, width: 400, height: 200))
        let secondLabel = UILabel(frame: CGRect(x: 10, y: 300, width: 400, height: 200))
        // show on screen
        self.view.addSubview(popup)
        popup.addSubview(label)
        popup.addSubview(secondLabel)
        
        
        
        
        
        let systemFontDescriptor = UIFont.systemFont(ofSize: 24, weight: .medium).fontDescriptor
        let hoeflerTextFontDescriptor = UIFont(name: "Hoefler Text", size: 24)!.fontDescriptor
        let upperCaseFeature = [
            UIFontDescriptor.FeatureKey.featureIdentifier : kUpperCaseType,
            UIFontDescriptor.FeatureKey.typeIdentifier : kUpperCaseType
        ]
        
        let lowerCaseFeature = [
            UIFontDescriptor.FeatureKey.featureIdentifier : kLowerCaseType,
            UIFontDescriptor.FeatureKey.typeIdentifier : kLowerCaseSmallCapsSelector
        ]
        
        let features = [upperCaseFeature, lowerCaseFeature]
        
        let systemFontAdditions = systemFontDescriptor.addingAttributes([.featureSettings: features])
        let hoeflerTextAdditions = hoeflerTextFontDescriptor.addingAttributes([.featureSettings: features])
        
        label.font = UIFont(descriptor: systemFontAdditions, size: 24)
        label.text = "Hello There!"
        
        secondLabel.font = UIFont(descriptor: hoeflerTextAdditions, size: 24)
        secondLabel.text = "Hello There!"

    }

}
