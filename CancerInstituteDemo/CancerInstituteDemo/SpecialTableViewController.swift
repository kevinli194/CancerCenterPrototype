//
//  SpecialTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/3/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SpecialTableViewController: UITableViewController {

    var specialTitles = ["Special Events", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var specialDescriptions = ["Special Events", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var specialImages = ["1.jpg", "2.jpg","3.jpg","4.jpg","5.jpg"]
    
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
        return specialTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("SpecialTableViewCell", forIndexPath: indexPath) as! SpecialTableViewCell
        let row = indexPath.row
        cell.specialLabel.text = specialTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowSpecialDetails" {
            let detailViewController = segue.destinationViewController as! SpecialDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = specialTitles[row]
            detailViewController.myDescription = specialDescriptions[row]
            detailViewController.myImage = specialImages[row]
        }
    }
}
