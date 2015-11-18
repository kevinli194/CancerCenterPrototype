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
        
        let camera = GMSCameraPosition.cameraWithLatitude(36.006725,
            longitude: -78.937257, zoom: 16, bearing: -40, viewingAngle: 30)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
        mapView.setMinZoom(10, maxZoom: 24)
        mapView.padding = UIEdgeInsetsMake(self.topLayoutGuide.length + 5,0,
            self.bottomLayoutGuide.length + 5, 0);
        self.view = mapView
        
//        let marker = GMSMarker()
//        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
//        marker.title = "Sydney"
//        marker.snippet = "Australia"
//        marker.map = mapView
//        
        
        let southWest = CLLocationCoordinate2DMake(36.004591, -78.936642)
        let northEast = CLLocationCoordinate2DMake(36.00552, -78.936502)
        let overlayBounds = GMSCoordinateBounds(coordinate: southWest, coordinate: northEast)
        
        let icon = UIImage(named: "Image")
        
        let overlay = GMSGroundOverlay(bounds: overlayBounds, icon: icon)
        overlay.bearing = 0

        overlay.map = mapView
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

