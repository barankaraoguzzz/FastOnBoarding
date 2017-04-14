//
//  OnBoardingExtension.swift
//  OnBording
//
//  Created by Mac on 13/04/2017.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation
import UIKit

public extension UIImageView {
    
    private struct helpClassStruct{
        static var helpClasses : helperClass!
    }
    
    func onBoardingAnimating(imageArray : [UIImage] , pageControl : UIPageControl , yourImageView : UIImageView , animationStyle : AnimationStyle){
        
        helpClassStruct.helpClasses = helperClass(imageArray: imageArray, pageControl: pageControl, yourImageView: yourImageView, animationTypeParams: animationStyle)
        
        
        let firstImageswipeGestureRecognizer = UISwipeGestureRecognizer(target: helpClassStruct.helpClasses, action: #selector(helpClassStruct.helpClasses.firstImageSwipeGestureAction))
        firstImageswipeGestureRecognizer.direction = .right
        yourImageView.isUserInteractionEnabled = true
        yourImageView.addGestureRecognizer(firstImageswipeGestureRecognizer)
        
        let firstImageswipeGestureRecognizerLeft = UISwipeGestureRecognizer(target: helpClassStruct.helpClasses, action: #selector(helpClassStruct.helpClasses.firstImageSwipeGestureAction))
        firstImageswipeGestureRecognizer.direction = .left
        yourImageView.isUserInteractionEnabled = true
        yourImageView.addGestureRecognizer(firstImageswipeGestureRecognizerLeft)
        
    }
    

}

public class helperClass {
    
    var onBoardingImageArray : [UIImage]?
    var onBoardingPageControl : UIPageControl?
    var onBoardingImageView : UIImageView?
    var animationType : AnimationStyle?
    
    init(imageArray : [UIImage] , pageControl : UIPageControl , yourImageView : UIImageView , animationTypeParams : AnimationStyle) {
        onBoardingImageArray = imageArray
        onBoardingPageControl = pageControl
        onBoardingImageView  = yourImageView
        animationType = animationTypeParams
    }
    
    @objc func firstImageSwipeGestureAction(gesture :UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                
                if (onBoardingPageControl?.currentPage)! > 0{
                    print("Swiped right")
                    self.leftPageCurlAnimation(animationStyle: animationType!)
                    onBoardingPageControl?.currentPage -= 1
                    self.onBoardingImageView?.image = onBoardingImageArray?[(onBoardingPageControl?.currentPage)!]
                }
                
            case UISwipeGestureRecognizerDirection.left:
                
                if (onBoardingPageControl?.currentPage)! < (onBoardingImageArray?.count)! - 1{
                    print("Swiped left")
                    self.rightPageCurlAnimation(animationStyle: animationType!)
                    onBoardingPageControl?.currentPage += 1
                    self.onBoardingImageView?.image = onBoardingImageArray?[(onBoardingPageControl?.currentPage)!]
                }
            default:
                break
            }
        }
    }
    
    private func leftPageCurlAnimation (animationStyle : AnimationStyle) {
        UIView.animate(withDuration: 1.0, animations: {
            let animation = CATransition()
            animation.duration = 1.0
            animation.startProgress = 0.0
            animation.endProgress = 1.0
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
            animation.type = animationStyle.rawValue
            animation.subtype = "fromLeft"
            animation.isRemovedOnCompletion = false
            animation.fillMode = "extended"
            self.onBoardingImageView?.layer.add(animation, forKey: "pageFlipAnimation")
            
        })
    }
    
    private func rightPageCurlAnimation(animationStyle : AnimationStyle){
        UIView.animate(withDuration: 1.0, animations: {
            let animation = CATransition()
            animation.duration = 1.0
            animation.startProgress = 0.0
            animation.endProgress = 1.0
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
            animation.type = animationStyle.rawValue
            animation.subtype = "fromRight"
            animation.isRemovedOnCompletion = false
            animation.fillMode = "extended"
            self.onBoardingImageView?.layer.add(animation, forKey: "pageFlipAnimation")
            
        })
    }
    
}

public enum AnimationStyle : String {
    case cameraIris = "cameraIris"
    case cameraIrisHollowOpen = "cameraIrisHollowOpen"
    case cameraIrisHollowClose = "cameraIrisHollowClose"
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






