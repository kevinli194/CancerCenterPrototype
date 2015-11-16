//
//  MoreViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/4/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class MoreViewController: UITableViewController {

    var resources = [Resource]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        self.resources = [Resource(item: "Calendar"), Resource(item: "Points of Interest"), Resource(item: "Support Groups"), Resource(item: "Educational Classes"), Resource(item: "Rest, Renew & Relax"), Resource(item: "Special Events"), Resource(item: "Travel & Lodging")]
        //self.navigationController?.navigationBar.backgroundColor = UIColor.blueColor()
        self.navigationController?.navigationBar.barTintColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        //self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        //self.navigationController?.navigationBar.translucent = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.resources.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        var resource : Resource
        resource = resources[indexPath.row]
        cell.textLabel?.text = resource.item
        cell.textLabel?.textColor = UIColor.whiteColor()
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("CalendarSegue", sender: self)
        }
        if indexPath.row == 1 {
            self.performSegueWithIdentifier("POISegue", sender: self)
        }
        if indexPath.row == 2 {
            self.performSegueWithIdentifier("SupportGroupsSegue", sender: self)
        }
        if indexPath.row == 3 {
            self.performSegueWithIdentifier("EducationSegue", sender: self)
        }
        if indexPath.row == 4 {
            self.performSegueWithIdentifier("RestSegue", sender: self)
        }
        if indexPath.row == 5 {
            self.performSegueWithIdentifier("SpecialEventsSegue", sender: self)
        }
        if indexPath.row == 6 {
            self.performSegueWithIdentifier("TravelSegue", sender: self)
        }
    }
}
