//
//  ContactViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/4/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    
    @IBOutlet weak var box1: UIImageView!
    @IBOutlet weak var box2: UIImageView!
    @IBOutlet weak var box3: UIImageView!
    
    
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
    
//    override func shouldAutorotate() -> Bool {
//        if (UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeLeft ||
//            UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeRight ||
//            UIDevice.currentDevice().orientation == UIDeviceOrientation.Unknown) {
//                return false;
//        }
//        else {
//            return true;
//        }
//    }
    //    override func shouldAutorotate() -> Bool {
    //        return false
    //    }
    
    //    override func supportedInterfaceOrientations() -> Int {
    //        return UIInterfaceOrientation.Portrait.rawValue
    //    }
    
    //    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    //        return [UIInterfaceOrientationMask.LandscapeLeft,UIInterfaceOrientationMask.LandscapeRight]
    //    }
    
    //    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    //        return UIInterfaceOrientation.Portrait.rawValue
    //    }
}
