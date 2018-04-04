//
//  FOAnimation.swift
//  FastOnBoarding_Example
//
//  Created by Baran on 4.04.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class FOAnimation {
    
    let animation = CATransition()
    
    internal func addAnimation(_ animationStyle : AnimationStyle, view: UIView, subTypeStyle: subTypeStyle) {
            animation.duration = 1.0
            animation.startProgress = 0.0
            animation.endProgress = 1.0
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
            animation.type = animationStyle.rawValue
            switch subTypeStyle {
                case .up   : animation.subtype = kCATransitionFromBottom
                case .down : animation.subtype = kCATransitionFromTop
                case .right: animation.subtype = kCATransitionFromLeft
                case .left : animation.subtype = kCATransitionFromRight
            }
            animation.isRemovedOnCompletion = false
            animation.fillMode = "extended"
            view.layer.add(animation, forKey: "pageFlipAnimation")
    }
}


