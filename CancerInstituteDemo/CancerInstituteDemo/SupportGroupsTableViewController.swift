//
//  SupportGroupsTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/15/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SupportGroupsTableViewController: UITableViewController {

    @IBOutlet weak var supportTitle: UILabel!
    var groupName = [String]()
    var groupTitle = [String]()
    var groupDateTime = [String]()
    var groupDescription = [String]()
    var groupImage = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupName = ["Blood Cancers", "Breast and Gyn Cancers", "Caregiver", "GI and Pancreatic Cancer", "GU Cancers", "Lung Cancer", "Prostate Cancer", "Mind-Body Coping"]
        groupTitle = ["Blood Cancers", "Breast and Gyn Cancers", "Caregiver", "GI and Pancreatic Cancer", "GU Cancers", "Lung Cancer", "Prostate Cancer", "Mind-Body Coping"]
        groupDateTime = []
        groupDescription = []
        groupImage = []
        tableView.estimatedRowHeight = 50
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.groupName.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("SupportCell", forIndexPath: indexPath) as! SupportGroupTableViewCell
        //let row = indexPath.row
        return cell
    }
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
            if segue.identifier == "SupportDetailsSegue" {
                let detailViewController = segue.destinationViewController as SupportGroupsViewController
                let myIndexPath = self.tableView.indexPathForSelectedRow
                let row = myIndexPath?.row
                detailViewController.mySupportGroup = groupTitle[row!]
            }
    }
*/
}
