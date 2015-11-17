//
//  FirstViewController.swift
//  DCI
//
//  Created by Georgia Tse on 9/24/15.
//  Copyright © 2015 Georgia Tse. All rights reserved.
//

import UIKit
import GoogleMaps

class MapController: UIViewController {
    @IBOutlet weak var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.blackColor();
        var overlay = GMSGroundOverlay()
        let icon = UIImage(named: "newark_nj_1922.jpg")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

