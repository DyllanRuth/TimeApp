//
//  ViewController.swift
//  TimerApp
//
//  Created by STUDENT-SP22 on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TodaysDate: UILabel!
    
    @IBOutlet weak var CurrentTime: UILabel!
    
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        //Step 1 Read the system date and time information
        let currentDate = NSDate()
        //Step 2 display date on the dateLabel
        let myDateFormattor = DateFormatter()
        myDateFormattor.dateFormat = "MMMM dd, yyyy"
        let convertDateString = myDateFormattor.string(from: currentDate as Date)
        
        TodaysDate.text =  convertDateString
        //Step 3 display time on the timeLabel
        myDateFormattor.dateFormat = "hh:mm:ss"
        let convertTimeString = myDateFormattor.string(from: currentDate as Date)
        
        CurrentTime.text = convertTimeString
        
        
    }


}

