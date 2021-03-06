//
//  SpecialTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SpecialTableViewController: UITableViewController {
    
    //data arrays
    var specialTitles = ["CRUSH colorectal Cancer 5K & Fun Walk", "Spring For Support 5K", "Spa Day", "Strike Out Sarcoma 5K & Fun Walk", "Komen Race For The Cure", "Pink Ribbon Yoga Retreat", "Gail Parkins Memorial Ovarian Cancer Walk & 5K", "Boyette Family Farm Corn Maze", "Making Strides Against Breast Cancer", "Light The Night", "Tree of Hope Lighting Ceremony"]
    var specialDescriptions = [
        "Held March 14 at the American Tobacco Trail in Durham, NC. For more information, visit sites.duke.edu",
        "Held March 28 at Southpoint Mall in Durham, NC. For more information, visit Springforsupport5k.org",
        "Spa Day is an annual event hosted by the Duke Cancer Patient Support Program. Spa Day focuses on Duke Cancer Center patients and their caregivers. Vendors volunteer to provide services including makeovers, wig styling, massage therapy, hand massage, gentle yoga, and poetry. Spa Day will be held on Wednesday, June 1, from 10 a.m. to 3 p.m. for more information, call 919.684.4497.",
        "Held Jun 13 at the Durham Athletic Park. For more information, visit sites.duke.edu/dukecancerinstitute",
        "Held June 14 at RTP in Morrisville, NC. For more information, visit Komennctc.org",
        "Held August 7 through August 10 at the Trinity Center. For more information, visit Yogaretreat.com",
        "Held September 12 at Sanderson High School in Raleigh, NC. For more information, visit ovarianawareness.org",
        "Held October 1 through Oct. 31 in Clayton, NC.",
        "Held October 2 in the Noth Hills Mall in Raleigh, NC. For more information, visit Makingstrides.acsevents.org",
        "Held October 10 in Durham, NC. For more information, visit lightthenight.org",
        "Held in December in the Duke Cancer Center. For more information, visit sites.duke.edu/dukecancerinstitute"]
    var specialImages = ["crushColorectal.jpg", "springSupport.png","spaDay.jpg","strikeoutSarcoma.png", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "treeHope.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
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
        
        //set up table view
        let cell = self.tableView.dequeueReusableCellWithIdentifier("SpecialTableViewCell", forIndexPath: indexPath) as! SpecialTableViewCell
        let row = indexPath.row
        cell.specialLabel.text = specialTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //navigate to new pages via segues
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

