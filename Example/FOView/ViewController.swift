//
//  ViewController.swift
//  FOView
//
//  Created by baran.karaoguz@ogr.sakarya.edu.tr on 04/04/2018.
//  Copyright (c) 2018 baran.karaoguz@ogr.sakarya.edu.tr. All rights reserved.
//

import UIKit
import FOView

class ViewController: UIViewController {

    @IBOutlet weak var onboardingView: FOView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingView.foImages = imageViewArray
        onboardingView.animateType = .oglFlip
        onboardingView.foDiriction = .horizantal
        onboardingView.startOnboarding()
        
    }

    let imageViewArray : [UIImage]? = [#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3")]
}

