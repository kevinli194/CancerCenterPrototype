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
        
        let camera = GMSCameraPosition.cameraWithLatitude(36.006725,
            longitude: -78.937257, zoom: 16, bearing: -20, viewingAngle: 30)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
        mapView.setMinZoom(10, maxZoom: 24)
        mapView.padding = UIEdgeInsetsMake(self.topLayoutGuide.length + 5,0,
            self.bottomLayoutGuide.length + 20, 0);
       
        
        mapView.addObserver(self, forKeyPath: "myLocation", options: .New, context: nil)
        
        self.view = mapView
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(36.005255, -78.934807)
        marker.title = "Duke Medicine Circle Parking Garage"
        marker.snippet = "302 Trent Drive"
        marker.map = mapView
        
        
        let southWest = CLLocationCoordinate2DMake(36.004910, -78.937428)
        let northEast = CLLocationCoordinate2DMake(36.004910, -78.936784)
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

