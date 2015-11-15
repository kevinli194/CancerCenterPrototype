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
        curClinic.text = myClinic
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

