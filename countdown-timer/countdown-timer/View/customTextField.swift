//
//  customTextField.swift
//  countdown-timer
//
//  Created by Aaron Johal on 21/02/2021.
//

import UIKit

class customTextField: UITextField {
    
    
    override func draw(_ rect: CGRect) {
        
        let calendarBtn  = UIButton(type: .custom)
        calendarBtn.setImage(UIImage(systemName: "calendar"), for: .normal)
        calendarBtn.frame = CGRect(x: 5, y: (frame.size.height / 2) - 20 / 2, width: 20, height: 20)
        addSubview(calendarBtn)
        
    }

   
    
    override  func awakeFromNib() {
        super.awakeFromNib()
    }

}
