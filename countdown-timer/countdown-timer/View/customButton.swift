//
//  customButton.swift
//  countdown-timer
//
//  Created by Aaron Johal on 21/02/2021.
//

import UIKit

class customButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        titleLabel?.font = UIFont(name: "Avenir", size: 20)
    }
    
    



}
