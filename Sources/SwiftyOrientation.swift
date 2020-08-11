//
//  SwiftyOrientation.swift
//  Pods-SwiftyOrientation_Example
//
//  Created by AKM Ahsanuzzaman on 11/8/20.
//

import UIKit

open class SwiftyOrientation {
    public static let shared = SwiftyOrientation()
    
    public init() {
    }
    
    public enum Direction {
        case left
        case right
        case portrait
        case portraitUpsideDown
        case faceUp
        case faceDown
        case flat
        case unknown
    }
    
    public func switchOrientation(orientation: UIInterfaceOrientation) {
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
        UIViewController.attemptRotationToDeviceOrientation()
    }
    
    public func switchToPortrait() {
        switchOrientation(orientation: .portrait)
    }
    
    public func switchToLandscape() {
        switchOrientation(orientation: .landscapeRight)
    }
    
    public func switchToLandscape(direction: Direction) {
        if direction == .left {
            switchOrientation(orientation: .landscapeLeft)
        } else {
            switchOrientation(orientation: .landscapeRight)
        }
    }
    
    public func isLandscape() -> Bool {
        if UIApplication.shared.statusBarOrientation == .portrait { return false }
        return true
    }
    
    public func landscapeDirection() -> Direction {
        if UIDevice.current.orientation == .landscapeLeft {
            return .left
        } else if UIDevice.current.orientation == .landscapeRight {
            return .right
        }
        return .unknown
    }
    
    public func isPortrait() -> Bool {
        return UIApplication.shared.statusBarOrientation == .portrait
    }
    
    public func isPortraitUpsideDown() -> Bool {
        return UIApplication.shared.statusBarOrientation == .portraitUpsideDown
    }
    
    /// Indicating whether the specified orientation is face up or face down (The device is held parallel to the ground with the screen facing downwards or Not).
    public func isFlat() -> Bool {
        return UIDevice.current.orientation.isFlat
    }
    
    public func isFaceUp() -> Bool {
        return UIDevice.current.orientation == .faceUp
    }
    
    public func isFaceDown() -> Bool {
        return UIDevice.current.orientation == .faceDown
    }
    
    /// Indicating whether the specified orientation is one of the portrait or landscape orientations.
    public func isValidOrientation() -> Bool {
        return UIDevice.current.orientation.isValidInterfaceOrientation
    }
    
    public func getDeviceOrientation() -> Direction {
        if isPortrait() {
            return .portrait
        } else if isPortraitUpsideDown() {
            return .portraitUpsideDown
        } else if isLandscape() {
            return landscapeDirection()
        } else if isFlat() {
            return .flat
        } else if isFaceUp() {
            return .faceUp
        } else if isFaceDown() {
            return .faceDown
        }
        return .unknown
    }
}
