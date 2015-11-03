//
//  EducationTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/3/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class EducationTableViewController: UITableViewController {

    var educationTitles = ["Education", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var educationDescriptions = ["Education", "The Eiffel Tower", "The Grand Canyon", "Windsor Castle", "Empire State Building"]
    var educationImages = ["1.jpg", "2.jpg","3.jpg","4.jpg","5.jpg"]
    
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
        return educationTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("EducationTableViewCell", forIndexPath: indexPath) as! EducationTableViewCell
        let row = indexPath.row
        cell.educationLabel.text = educationTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowEducationDetails" {
            let detailViewController = segue.destinationViewController as! EducationDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = educationTitles[row]
            detailViewController.myDescription = educationDescriptions[row]
            detailViewController.myImage = educationImages[row]
        }
    }
}
