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
    
    @IBOutlet weak var curProvider: UILabel!
    @IBOutlet weak var curTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        curProvider.text = myProvider
        curTime.text = myTime
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

