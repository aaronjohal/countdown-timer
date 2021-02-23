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
        calendarBtn.tintColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        addSubview(calendarBtn)
        
    }

   
    
    override  func awakeFromNib() {
        super.awakeFromNib()
    }

}
