//
//  SupportGroupsTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/15/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SupportGroupsTableViewController: UITableViewController {

    var groups = [SupportGroup]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.groups = [SupportGroup(item: "Blood Cancers"), SupportGroup(item: "Breast and Gyn Cancers"), SupportGroup(item: "Caregiver"), SupportGroup(item: "GI and Pancreatic Cancer"), SupportGroup(item: "GU Cancers"), SupportGroup(item: "Lung Cancer"), SupportGroup(item: "Prostate Cancer"), SupportGroup(item: "Mind-Body Coping")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.groups.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("SupportCell", forIndexPath: indexPath) as UITableViewCell
        
        var group : SupportGroup
        
        group = groups[indexPath.row]
        
        cell.textLabel?.text = group.item
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("BloodSegue", sender: self)
        }
        if indexPath.row == 1 {
            self.performSegueWithIdentifier("BreastSegue", sender: self)
        }
        if indexPath.row == 2 {
            self.performSegueWithIdentifier("CaregiverSegue", sender: self)
        }
        if indexPath.row == 3 {
            self.performSegueWithIdentifier("GISegue", sender: self)
        }
        if indexPath.row == 4 {
            self.performSegueWithIdentifier("GUSegue", sender: self)
        }
        if indexPath.row == 5 {
            self.performSegueWithIdentifier("LungSegue", sender: self)
        }
        if indexPath.row == 6 {
            self.performSegueWithIdentifier("ProstateSegue", sender: self)
        }
        if indexPath.row == 7 {
            self.performSegueWithIdentifier("MindSegue", sender: self)
        }
        
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
