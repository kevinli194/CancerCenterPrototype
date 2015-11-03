//
//  POITableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/3/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class POITableViewController: UITableViewController {
    
    var POITitles = ["POI", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var POIDescriptions = ["POI", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var POIImages = ["1.jpg", "2.jpg","3.jpg","4.jpg","5.jpg"]
    
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
