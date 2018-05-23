//
//  LPCRippleView.swift
//  LPCRippleAnimationView
//
//  Created by Alaeddine Ouertani on 22/05/2018.
//  Copyright © 2018 Lakooz. All rights reserved.
//

import UIKit

final class LPCRippleView: UIView {
    
    // MARK: Public Static Properties
    
    static var startColor: UIColor!
    static var endColor: UIColor!
    
    // MARK: Overrides
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        addGradient(startColor: LPCRippleView.startColor, endColor: LPCRippleView.endColor)
    }
}
