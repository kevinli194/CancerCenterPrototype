//
//  TravelTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/3/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class TravelTableViewController: UITableViewController {

    var travelTitles = ["Travel", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var travelDescriptions = ["Travel and lodge", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var travelImages = ["1.jpg", "2.jpg","3.jpg","4.jpg","5.jpg"]
    
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
        return travelTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("TravelTableViewCell", forIndexPath: indexPath) as! TravelTableViewCell
        let row = indexPath.row
        cell.travelLabel.text = travelTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowTravelDetails" {
            let detailViewController = segue.destinationViewController as! TravelDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = travelTitles[row]
            detailViewController.myDescription = travelDescriptions[row]
            detailViewController.myImage = travelImages[row]
        }
    }
}
