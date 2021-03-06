//
//  FirstViewController.swift
//  DCI
//
//  Created by Georgia Tse on 9/24/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit
import GoogleMaps

class MapController: UIViewController {
    @IBOutlet weak var mapView: GMSMapView!
    let locationManager=CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        self.locationManager.requestWhenInUseAuthorization()
        
        let camera = GMSCameraPosition.cameraWithLatitude(36.005470,
            longitude: -78.936115, zoom: 17, bearing: -60, viewingAngle: 30)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        //mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
        mapView.setMinZoom(10, maxZoom: 24)
        //mapView.padding = UIEdgeInsetsMake(self.topLayoutGuide.length + 5,0,
            //self.bottomLayoutGuide.length + 20, 0);
       
        
        //mapView.addObserver(self, forKeyPath: "myLocation", options: .New, context: nil)
        
        self.view = mapView
    
        let marker = GMSMarker()

        
        marker.position = CLLocationCoordinate2DMake(36.005403, -78.934317)
        marker.title = "Duke Medicine Cir Parking Garage"
        marker.snippet = "302 Trent Drive"
        marker.icon = UIImage(named: "parking")
        marker.map = mapView
        
        
        let northEast = CLLocationCoordinate2DMake(36.005525, -78.937060)
        let southWest = CLLocationCoordinate2DMake(36.004774, -78.936090)
        let overlayBounds = GMSCoordinateBounds(coordinate: northEast, coordinate: southWest)
        
        let icon = UIImage(named: "Image")
        
        let overlay = GMSGroundOverlay(bounds: overlayBounds, icon: icon)
        overlay.bearing = -70
        

        overlay.map = mapView
        

        // Do any additional setup after loading the view, typically from a nib.
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

