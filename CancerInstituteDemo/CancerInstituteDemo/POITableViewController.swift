//
//  POITableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/3/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class POITableViewController: UITableViewController {
    
    var POITitles = ["Roottop Garden", "Belk Boutique", "Café", "Quiet Room", "Duke Bookstore", "Resource Center", "Retail Pharmacy", "Common Areas", "Duke Chapel"]
    var POIDescriptions = [""]
    var POIImages = ["RooftopGarden.png", "Boutique.png", "default.png", "QuietRoom.png", "default.png", "default.png", "CommonAreas.png", "DukeChapel.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return POITitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("POITableViewCell", forIndexPath: indexPath) as! POITableViewCell
        let row = indexPath.row
        cell.POILabel.text = POITitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowPOIDetails" {
            let detailViewController = segue.destinationViewController as! POIDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = POITitles[row]
            detailViewController.myDescription = POIDescriptions[row]
            detailViewController.myImage = POIImages[row]
        }
    }
}
