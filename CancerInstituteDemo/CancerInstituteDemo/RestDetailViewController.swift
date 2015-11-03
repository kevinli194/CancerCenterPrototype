//
//  RestDetailViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/3/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class RestDetailViewController: UIViewController {

    var myTitle: String?
    var myDescription: String?
    var myImage: String?
    
    @IBOutlet weak var curTitle: UILabel!
    @IBOutlet weak var curDescription: UILabel!
    @IBOutlet weak var curImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        curTitle.text = myTitle
        curDescription.text = myDescription
        curImage.image = UIImage(named: myImage!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
