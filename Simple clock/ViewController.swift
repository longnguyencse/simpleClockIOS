//
//  ViewController.swift
//  Simple clock
//
//  Created by Long Nguyen on 3/23/17.
//  Copyright © 2017 Long Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextLable.text = ""
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateClock), userInfo: nil, repeats: true)
    }
    
    func updateClock() {
        let date = Date();
        let calendar = Calendar.current
        
        let hours = calendar.component(.hour, from: date)
        let minites = calendar.component(.minute, from: date)
        let seconds =  calendar.component(.second, from: date)
        
        var hour = hours > 12 ? (hours - 12) :  hours
        hour = hour == 0 ? 12 : hour
        
        let hourString = hour > 9 ? "\(hour)" : "0\(hour)"
        let minutes = minites > 9 ? "\(minites)" : "0\(minites)"
        
        let second = seconds > 9  ? "\(seconds)" : "0\(seconds)"
        
        let am = hour > 12 ? "PM" : "AM"
        
        myTextLable.text = "\(hourString):\(minutes):\(second) \(am)"
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

