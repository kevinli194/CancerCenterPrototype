//
//  POITableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/26/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class POITableViewController: UITableViewController {
    
    var pois = [POI]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pois = [POI(item: "Quiet Room"), POI(item: "Boutique"), POI(item: "Rooftop Garden")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pois.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("POICell", forIndexPath: indexPath) as UITableViewCell
        
        var poiss : POI
        
        poiss = pois[indexPath.row]
        
        cell.textLabel?.text = poiss.item
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("QuietRoomSegue", sender: self)
        }
        if indexPath.row == 1 {
            self.performSegueWithIdentifier("BoutiqueSegue", sender: self)
        }
        if indexPath.row == 2 {
            self.performSegueWithIdentifier("RooftopGardenSegue", sender: self)
        }
    }
}
