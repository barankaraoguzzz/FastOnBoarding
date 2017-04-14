# FastOnBoarding

[![CI Status](http://img.shields.io/travis/baran.karaoguz@ogr.sakarya.edu.tr/FastOnBoarding.svg?style=flat)](https://travis-ci.org/baran.karaoguz@ogr.sakarya.edu.tr/FastOnBoarding)
[![Version](https://img.shields.io/cocoapods/v/FastOnBoarding.svg?style=flat)](http://cocoapods.org/pods/FastOnBoarding)
[![License](https://img.shields.io/cocoapods/l/FastOnBoarding.svg?style=flat)](http://cocoapods.org/pods/FastOnBoarding)
[![Platform](https://img.shields.io/cocoapods/p/FastOnBoarding.svg?style=flat)](http://cocoapods.org/pods/FastOnBoarding)

**FastOnBoarding framework helps you make your onboard page.You write just a line code  and finished onboard page. It has 13 different animation**

**these :**
- cameraIris
- cameraIrisHollowOpen
- cameraIrisHollowClose
- cube
- alignedCube
- flip
- alignedFlip
- oglFlip
- rotate
- pageCurl
- pageUnCurl
- rippleEffect
- suckEffect 

**AlignedFlip animation**
![](https://media.giphy.com/media/3o7btQiPu6fGNRV5mM/giphy.gif)

**Cube animation**
![](https://media.giphy.com/media/3o7bueB26ACcgLLeCs/giphy.gif)

**PageCurl animation**
![](https://media.giphy.com/media/3oKIPEsjjpUJr3FnEI/giphy.gif)

## Example

```swift
import UIKit
import FastOnBoarding

class MainController: UIViewController {

override func viewDidLoad() {
super.viewDidLoad()

self.onBoardingImage.onBoardingAnimating(imageArray: imageViewArray!, pageControl: onBoardingPageControl, yourImageView: onBoardingImage, animationStyle: .pageCurl)
}

@IBOutlet weak var onBoardingPageControl: UIPageControl!
@IBOutlet weak var onBoardingImage: UIImageView!
let imageViewArray : [UIImage]? = [#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3")]


}

```

## Install via CocoaPods

FastOnBoarding is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```ruby
platform :ios, '8.0'
use_frameworks!

pod "FastOnBoarding"
```

####Then on the top of files where you are going to use this:
```swift
import FastOnBoarding
```


## Author

Baran Batuhan Karaoğuz([@Baran](https://github.com/barankaraoguzzz))

## License

FastOnBoarding is available under the MIT license. See the LICENSE file for more info.

##Keywords swift, swift3, Animating, Pagecurl, Cube, Onboarding, Onboard, xcode, ios
