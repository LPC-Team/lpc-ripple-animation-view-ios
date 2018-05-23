//
//  LPCRipple.swift
//  LPCRippleAnimationView
//
//  Created by Alaeddine Ouertani on 22/05/2018.
//  Copyright © 2018 Lakooz. All rights reserved.
//

import UIKit

public final class LPCRipple {
    
    // MARK: Private Properties
    
    private let startFrame: CGRect!
    private let currentViewController: UIViewController!
    private let startColor: UIColor!
    private let endColor: UIColor!
    
    // MARK: Public Properties
    
    public var isShown: Bool {
        return !(self.errorView?.isHidden ?? true)
    }
    
    // MARK: Private Properties
    
    private var errorView: LPCRippleView?
    
    public init(viewController: UIViewController, startFrame: CGRect, startColor: UIColor? = nil, endColor: UIColor? = nil) {
        self.currentViewController = viewController
        self.startFrame = startFrame
        
        if let startColor = startColor {
            self.startColor = startColor
        } else {
            self.startColor = UIColor.darkRedColor
        }
        
        if let endColor = endColor {
            self.endColor = endColor
        } else {
            self.endColor = UIColor.redColor
        }
    }

    // MARK: Public Methods
    
    public final func play() {
        if self.errorView == nil {
            
            LPCRippleView.startColor = self.startColor
            LPCRippleView.endColor = self.endColor
            
            if let parentView = self.currentViewController.view {
                self.errorView = LPCRippleView(frame: CGRect(x: 0, y: 0, width: parentView.frame.width, height: parentView.frame.height))
            
                if let errorView = self.errorView {
                    parentView.insertSubview(errorView, at: 1)
                    errorView.isHidden = true
                }
            }
        }
        
        if let errorView = self.errorView {
            errorView.drawAnimation(startFrame: self.startFrame, animationType: .reveal)
        }
    }
    
    public final func remove() {
        if let errorView = self.errorView {
            guard let startFrame = self.startFrame else {
                fatalError("startFrame must not be nil")
            }
            
            errorView.drawAnimation(startFrame: startFrame, animationType: .unreveal)
        }
    }
}
