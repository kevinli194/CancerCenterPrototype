//
//  EducationDetailViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//


import UIKit

class EducationDetailViewController: UIViewController {
    
    var myTitle: String?
    var myDescription: String?
    var myImage: String?
    
    @IBOutlet weak var curTitle: UILabel!
    @IBOutlet weak var curDescription: UILabel!
    @IBOutlet weak var curImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        curTitle.text = myTitle
        curDescription.text = myDescription
        curImage.image = UIImage(named: myImage!)
        
        //make images circular
        curImage.layer.cornerRadius = curImage.frame.size.width/2
        curImage.clipsToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
