//
//  FOEnums.swift
//  FastOnBoarding_Example
//
//  Created by Baran on 4.04.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

public enum animateDirection {
    case horizantal
    case vertical
}

public enum AnimationStyle : String {
    case cube = "cube"
    case alignedCube = "alignedCube"
    case flip = "flip"
    case alignedFlip = "alignedFlip"
    case oglFlip = "oglFlip"
    case rotate = "rotate"
    case pageCurl = "pageCurl"
    case pageUnCurl = "pageUnCurl"
    case rippleEffect = "rippleEffect"
    case suckEffect = "suckEffect"
}

public enum subTypeStyle {
    case up
    case down
    case right
    case left
}
