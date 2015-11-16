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
    var myTime: String?
    var myClinic: String?
    
    @IBOutlet weak var curProvider: UILabel!
    @IBOutlet weak var curTime: UILabel!
    @IBOutlet weak var curClinic: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        curProvider.text = myProvider
        curTime.text = myTime
        if myTime!.lowercaseString == "on time" {
            curTime.textColor = UIColor.greenColor()
        } else if myTime!.lowercaseString.containsString("hr") || myTime!.lowercaseString.containsString("hour") {
            curTime.textColor = UIColor.redColor()
        } else {
            curTime.textColor = UIColor.yellowColor()
        }
        curClinic.text = myClinic
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

