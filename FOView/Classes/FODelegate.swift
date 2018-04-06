//
//  FODelegate.swift
//  FOView
//
//  Created by Baran on 6.04.2018.

import UIKit

public protocol FODelegate: class {
    func FOnboarding(_ foView: FOView, getCountPageControl: Int)
}


public extension FODelegate {
    func FOnboarding(_ foView: FOView, getCountPageControl: Int) {}
}


