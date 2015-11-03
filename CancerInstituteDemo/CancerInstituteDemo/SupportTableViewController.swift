//
//  SupportTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/3/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SupportTableViewController: UITableViewController {

    var supportTitles = ["Support", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var supportDescriptions = ["Buckingham Palace", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var supportImages = ["1.jpg", "2.jpg","3.jpg","4.jpg","5.jpg"]
    
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
        return supportTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("SupportTableViewCell", forIndexPath: indexPath) as! SupportTableViewCell
        let row = indexPath.row
        cell.supportLabel.text = supportTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowSupportDetails" {
            let detailViewController = segue.destinationViewController as! SupportDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = supportTitles[row]
            detailViewController.myDescription = supportDescriptions[row]
            detailViewController.myImage = supportImages[row]
        }
    }
}
