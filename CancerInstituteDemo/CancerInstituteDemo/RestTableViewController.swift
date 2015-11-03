//
//  RestTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/2/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class RestTableViewController: UITableViewController {

    var restTitles = ["Buckingham Palace", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var restDescriptions = ["Buckingham Palace", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var restImages = ["1.jpg", "2.jpg","3.jpg","4.jpg","5.jpg"]
    
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
        return restTitles.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = self.tableView.dequeueReusableCellWithIdentifier("RestTableViewCell", forIndexPath: indexPath) as! RestTableViewCell
        let row = indexPath.row
        cell.restLabel.text = restTitles[row]
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowRestDetails" {
            let detailViewController = segue.destinationViewController as! RestDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = restTitles[row]
            detailViewController.myDescription = restDescriptions[row]
            detailViewController.myImage = restImages[row]
        }
    }
}
