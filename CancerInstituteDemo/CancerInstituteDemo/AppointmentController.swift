//
//  SecondViewController.swift
//  DCI
//
//  Created by Georgia Tse on 9/24/15.
//  Copyright © 2015 Georgia Tse. All rights reserved.
//

import UIKit

class AppointmentController: UIViewController {
    
    var myProvider: String?
    var myTime: Int = 0
    var myClinic: String?
    
    @IBOutlet weak var curProvider: UILabel!
    @IBOutlet weak var curTime: UILabel!
    @IBOutlet weak var curClinic: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        curProvider.text = myProvider
        if myTime == 0 {
            curTime.textColor = UIColor.greenColor()
            curTime.text = "On Time"
        }
        else if myTime > 30 {
            curTime.textColor = UIColor.redColor()
            curTime.text = String(myTime) + "min Late"
        }
        else {
            curTime.textColor = UIColor.yellowColor()
            curTime.text = String(myTime) + "min Late"
        }
        curClinic.text = myClinic
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

