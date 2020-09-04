//
//  BottomButton.swift
//  Rosary
//
//  Created by Ryan Scott on 9/3/20.
//  Copyright © 2020 Ryan Scott. All rights reserved.
//

import UIKit

@IBDesignable
class BottomButton: UIButton {
    
    
    
    override func prepareForInterfaceBuilder() {
        updateStoryboard()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateStoryboard()
    }
    
    func updateStoryboard() {
        
        layer.borderWidth = 3.0
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
