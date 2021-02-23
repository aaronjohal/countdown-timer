//
//  eventTimerVC.swift
//  countdown-timer
//
//  Created by Aaron Johal on 21/02/2021.
//

import UIKit
import SwiftUI

class eventTimerVC: UIViewController {
    
    @IBOutlet weak var eventNameTxtField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timepicker: UIDatePicker!
    @IBOutlet weak var countdownTxt: UILabel!
    @IBOutlet weak var countdownStack: UIStackView!
    @IBOutlet weak var dayStack: UIStackView!
    
    
    
    @IBOutlet weak var daysLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var minutesLbl: UILabel!
    @IBOutlet weak var secondsLbl: UILabel!
    
    
    var timer: Timer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        

    }
    
    @IBAction func calcBtnPressed(_ sender: Any) {
        if let eventName = eventNameTxtField.text {
            if eventName == "" {
              //put warning box here
            } else {
                timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true) //init timer
                updateTime()
                self.view.endEditing(true)
               

            }
           
        }
        
    
    }
 
    
  
    
  @objc func updateTime(){

        let eventDate = datePicker.date
        let todaysDate = Date()

        let diffComponents = Calendar.current.dateComponents([.day, .hour, .minute,.second], from: todaysDate, to: eventDate) //get different components of the date e.g. hours, days  between two dates

        let day = diffComponents.day!
        let hours = diffComponents.hour!
        let minutes = diffComponents.minute!
        let seconds = diffComponents.second!
    
    
    displayCountdown(days: day, hours: hours, minutes: minutes, seconds: seconds)
        
//        let timerLabel = "\(day)d \(hours)h \(minutes)m \(seconds)s"
//        print(timerLabel)

    }
    
    func displayCountdown(days: Int, hours: Int, minutes: Int, seconds: Int){
        
        countdownStack.isHidden = false
        dayStack.isHidden = false
        
        daysLbl.text = "\(days)"
        hoursLbl.text = "\(hours)"
        minutesLbl.text = "\(minutes)"
        secondsLbl.text = "\(seconds)"
        
    }

   
   
    
    
}
