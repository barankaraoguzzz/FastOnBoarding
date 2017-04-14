//
//  MainController.swift
//  OnBording
//
//  Created by Mac on 11/04/2017.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit
import FastOnBoarding

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        onBoardingImage.onBoardingAnimating(imageArray: imageViewArray!, pageControl: onBoardingPageControl, yourImageView: onBoardingImage, animationStyle: .pageCurl)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var onBoardingPageControl: UIPageControl!
    @IBOutlet weak var onBoardingImage: UIImageView!
    let imageViewArray : [UIImage]? = [#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3")]
    
    
}

