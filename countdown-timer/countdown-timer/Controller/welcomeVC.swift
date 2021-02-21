//
//  ViewController.swift
//  countdown-timer
//
//  Created by Aaron Johal on 21/02/2021.
//

import UIKit

class welcomeVC: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func welcomeBtnTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "eventTimerSegue", sender: self)
    }
    

}

