//
//  RestTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/2/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class RestTableViewController: UITableViewController {
    
    var rests = [Rest]()
    var myNames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadRestInfo()
    }
    
    func loadRestInfo() {
        //let photo1 = UIImage(named: "meal1")!
        //let meal1 = Meal(name: "Caprese Salad", photo: photo1, rating: 4)!
        
        let rest1 = Rest(name: "Quiet Room")!
        let rest2 = Rest(name: "My Room")!
        let rest3 = Rest(name: "Your Room")!
        
        rests += [rest1, rest2, rest3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rests.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cellIdentifier = "RestTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! RestTableViewCell
        
        let rest = rests[indexPath.row]
        cell.restLabel.text = rest.name
        return cell
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowRestDetails" { //check deatilSSS
            let RestDetailsViewController = segue.destinationViewController as! RestViewController //herrrr MealViewController
            
            if let selectedRestCell = sender as? RestTableViewCell {
                let indexPath = tableView.indexPathForCell(selectedRestCell)!
                let selectedRest = rests[indexPath.row]
                RestDetailsViewController.rest = selectedRest
            }
        }
        else if segue.identifier == "AddItem" {
            print("Adding new rest.")
        }
    }
    
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
