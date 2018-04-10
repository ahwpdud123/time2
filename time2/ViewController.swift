//
//  ViewController.swift
//  time2
//
//  Created by D7703_15 on 2018. 4. 10..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerSwitch: UISwitch!
    @IBOutlet weak var timeLabel: UILabel!
    var mytimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerSwitch.setOn(false, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func timerStrat(_ sender: Any) {
        if timerSwitch.isOn == true {
            
            mytimer = Timer.scheduledTimer(withTimeInterval:1 , repeats: true, block: {(mytimer) in
                self.updateTime()
            })
                
        }else {
            mytimer.invalidate()
        }
    }
    func updateTime () {
        let date = Date ()
        let formatter = DateFormatter ()
        formatter.dateFormat = " HH : mm : ss a "
        timeLabel.text = formatter.string(from: date)
    }


}

