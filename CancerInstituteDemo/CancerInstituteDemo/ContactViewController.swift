//
//  ContactViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/4/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    //UI boxes for each contact
    @IBOutlet weak var box1: UIImageView!
    @IBOutlet weak var box2: UIImageView!
    @IBOutlet weak var box3: UIImageView!
    
    
    //implimenting calling functions
    @IBAction func callTriage(sender: AnyObject) {
        let url:NSURL = NSURL(string: "tel://9196686608")!
        UIApplication.sharedApplication().openURL(url)
    }

    @IBAction func callResourceCenter(sender: AnyObject) {
        let url:NSURL = NSURL(string:"tel://9196846955")!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func callConcierge(sender: AnyObject) {
        let url:NSURL = NSURL(string:"tel://9196814947")!
        UIApplication.sharedApplication().openURL(url)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigation bar background
        self.navigationController?.navigationBar.barTintColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        
        //full view background
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
       
        //rounded edges for the boxes
        box1.layer.cornerRadius = 10
        box1.clipsToBounds = true
        box2.layer.cornerRadius = 10
        box2.clipsToBounds = true
        box3.layer.cornerRadius = 10
        box3.clipsToBounds = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
