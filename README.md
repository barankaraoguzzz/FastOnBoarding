# FastOnBoarding

[![CI Status](http://img.shields.io/travis/baran.karaoguz@ogr.sakarya.edu.tr/FastOnBoarding.svg?style=flat)](https://travis-ci.org/baran.karaoguz@ogr.sakarya.edu.tr/FastOnBoarding)
[![Version](https://img.shields.io/cocoapods/v/FastOnBoarding.svg?style=flat)](http://cocoapods.org/pods/FastOnBoarding)
[![License](https://img.shields.io/cocoapods/l/FastOnBoarding.svg?style=flat)](http://cocoapods.org/pods/FastOnBoarding)
[![Platform](https://img.shields.io/cocoapods/p/FastOnBoarding.svg?style=flat)](http://cocoapods.org/pods/FastOnBoarding)

**FastOnBoarding framework helps you make your onboard page.You write just a line code  and finished onboard page. It has 11 different animation**

**these :**
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



![](https://media.giphy.com/media/l4FGysXyvvZsR9f68/giphy.gif) ,    ![](https://media.giphy.com/media/3oKIP8pPkC8BG88qKQ/giphy.gif) ,    ![](https://media.giphy.com/media/l4FGwALpCwhtiscZG/giphy.gif)







## Example

```swift
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


```

## Install via CocoaPods

FastOnBoarding is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```ruby
platform :ios, '8.0'
use_frameworks!

pod "FOView"
```

####Then on the top of files where you are going to use this:
```swift
import FOView
```


## Author

Baran Batuhan Karaoğuz([@Baran](https://github.com/barankaraoguzzz))

## License

FastOnBoarding is available under the MIT license. See the LICENSE file for more info.

##Keywords swift, swift3, Animating, Pagecurl, Cube, Onboarding, Onboard, xcode, ios

