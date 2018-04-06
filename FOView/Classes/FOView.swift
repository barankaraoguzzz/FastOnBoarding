//
//  FOView.swift
//  FastOnBoarding_Example
//
//  Created by Baran on 4.04.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

public class FOView: UIView {
    
    //Mark: -Private Veriable
    private var _imageView : UIImageView?
    private var _pageControl : UIPageControl?
    private var foAnimate = FOAnimation()
    
    //Mark: -Public Veriable
    public var foImages : [UIImage]?
    public var foDiriction = animateDirection.horizantal
    public var isPageControlEnable = true
    public var animateType = AnimationStyle.alignedFlip
    
    //Mark: -Delegate
    public weak var delegate: FODelegate?
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInıt()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInıt()
    }
    
    override public func layoutSubviews() {
        setViewFrame()
    }
    
    private func commonInıt(){
        _imageView = UIImageView()
        _pageControl = UIPageControl()
        
    }
    
    public func startOnboarding(){
        addSwipe()
    }
    
    private func setViewFrame(){
        _imageView?.frame = self.frame
        _imageView?.contentMode = .scaleAspectFill
        _imageView?.clipsToBounds = true
        self.addSubview(_imageView!)
        //Mark: - ***************************************
        if isPageControlEnable {
            _pageControl?.frame = CGRect(x: 0, y: self.frame.height - 30, width: self.frame.width, height: 30)
            _pageControl?.backgroundColor = UIColor.black.withAlphaComponent(0.4)
            _pageControl?.tintColor = UIColor.gray
            _pageControl?.currentPageIndicatorTintColor = UIColor.white
            self.addSubview(_pageControl!)
        }
    }
    
    fileprivate func addSwipe(){
        self.isUserInteractionEnabled = true
        _imageView?.image = foImages![0]
        _pageControl?.numberOfPages = (foImages?.count)!
        
        switch foDiriction {
        case .horizantal:
            //Mark: -Right swipe add
            let gestureRight = UISwipeGestureRecognizer(target: self, action: #selector(directionHorizantal(gesture:)))
            gestureRight.direction = .right
            self.addGestureRecognizer(gestureRight)
            
            //Mark: -Left swipe add
            let gestureLeft = UISwipeGestureRecognizer(target: self, action: #selector(directionHorizantal(gesture:)))
            gestureRight.direction = .left
            self.addGestureRecognizer(gestureLeft)
            
        case .vertical:
            
            //Mark: -Down swipe add
            let gestureDown = UISwipeGestureRecognizer(target: self, action: #selector(directionVertical(gesture:)))
            gestureDown.direction = .down
            self.addGestureRecognizer(gestureDown)
            
            //Mark: -Up swipe add
            let gestureUp = UISwipeGestureRecognizer(target: self, action: #selector(directionVertical(gesture:)))
            gestureUp.direction = .up
            self.addGestureRecognizer(gestureUp)
            
        }
    }
    
    
    @objc fileprivate func directionHorizantal(gesture :UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                if (_pageControl?.currentPage)! > 0{
                    foAnimate.addAnimation(animateType, view: self, subTypeStyle: .right)
                    _pageControl?.currentPage -= 1
                    _imageView?.image = foImages?[(_pageControl?.currentPage)!]
                }
            case UISwipeGestureRecognizerDirection.left:
                if (_pageControl?.currentPage)! < (foImages?.count)! - 1{
                    foAnimate.addAnimation(animateType, view: self, subTypeStyle: .left)
                    _pageControl?.currentPage += 1
                    _imageView?.image = foImages?[(_pageControl?.currentPage)!]
                }
            default:break
            }
            
            if delegate != nil {
                delegate?.FOnboarding(self, getCountPageControl: (_pageControl?.currentPage)!)
            }
            
        }
    }
    
    @objc fileprivate func directionVertical(gesture :UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.down:
                print("down")
                if (_pageControl?.currentPage)! > 0{
                    foAnimate.addAnimation(animateType, view: self, subTypeStyle: .down)
                    _pageControl?.currentPage -= 1
                    _imageView?.image = foImages?[(_pageControl?.currentPage)!]
                }
            case UISwipeGestureRecognizerDirection.up:
                print("Up")
                if (_pageControl?.currentPage)! < (foImages?.count)! - 1{
                    foAnimate.addAnimation(animateType, view: self, subTypeStyle: .up)
                    _pageControl?.currentPage += 1
                    _imageView?.image = foImages?[(_pageControl?.currentPage)!]
                }
            default:break
            }
            
            if delegate != nil {
                delegate?.FOnboarding(self, getCountPageControl: (_pageControl?.currentPage)!)
            }
        }
    }
}
