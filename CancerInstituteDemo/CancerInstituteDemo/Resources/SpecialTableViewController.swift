//
//  SpecialTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SpecialTableViewController: UITableViewController {
    
    var specialTitles = ["CRUSH colorectal Cancer 5K & Fun Walk", "Spring For Support 5K", "Spa Day", "Strike Out Sarcoma 5K & Fun Walk", "Komen Race For The Cure", "Pink Ribbon Yoga Retreat", "Gail Parkins Memorial Ovarian Cancer Walk & 5K", "Boyette Family Farm Corn Maze", "Making Strides Against Breast Cancer", "Light The Night", "Tree of Hope Lighting Ceremony"]
    var specialDescriptions = [
        "Held March 14 at the American Tobacco Trail in Durham, NC. For more information, visit sites.duke.edu",
        "Held March 28 at Southpoint Mall in Durham, NC. For more information, visit Springforsupport5k.org",
        "Held June 5 in the Duke Cancer Center. For more information, visit sites.duke.edu/dukecancerinstitute",
        "Held Jun 13 at the Durham Athletic Park. For more information, visit sites.duke.edu/dukecancerinstitute",
        "Held June 14 at RTP in Morrisville, NC. For more information, visit Komennctc.org",
        "Held August 7 through August 10 at the Trinity Center. For more information, visit Yogaretreat.com",
        "Held September 12 at Sanderson High School in Raleigh, NC. For more information, visit ovarianawareness.org",
        "Held October 1 through Oct. 31 in Clayton, NC.",
        "Held October 2 in the Noth Hills Mall in Raleigh, NC. For more information, visit Makingstrides.acsevents.org",
        "Held October 10 in Durham, NC. For more information, visit lightthenight.org",
        "Held in December in the Duke Cancer Center. For more information, visit sites.duke.edu/dukecancerinstitute"]
    var specialImages = ["crush5K.jpg", "springsupport.jpg","default.jpg","strikeout.png", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "candles.jpg"]
    
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

