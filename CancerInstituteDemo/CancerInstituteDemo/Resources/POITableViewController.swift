//
//  POITableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class POITableViewController: UITableViewController {
    
    var POITitles = ["Rooftop Garden", "Belk Boutique", "Café", "Quiet Room", "Duke Bookstore", "Resource Center", "Specialty Pharmacy", "Common Areas", "Duke Chapel"]
    var POIDescriptions = ["The Bernstein Family Garden is an outdoor rooftop garden area located on the fourth floor where patients and families can enjoy the fresh air and beautiful North Carolina vegetation. Patients are also welcome to consult their medical providers to see if their treatment regimen allows them to receive chemotherapy outdoors.", "Are you in need of a wig, scarf, or other cosmetic product? Come to the Belk Boutique, located on the main level (0), where patients can select head coverings and have consultations for post-surgical garments.", "Do you need sustainance after a long day of appointments? Come to the Duke Cancer Center Cafe located on the main level (0). We offer a health-focused menu with occasional cooking demonstrations. Our hours are from 7:00 a.m. to 5:00 p.m.", "The Quiet Room is located on the main level and open for personal reflection and meditation. There are also several group-led sessions in this space including Spiritual Self Care, Open Meditation, and Tai Chi.", "", "The Patient Resource Center, located on the main level (0) of the Cancer Center, where experts can help you find information about specific cancers and the latest treatments, connect with support groups, financial resources and more. Open Monday - Friday, 8:00 a.m. - 4:00 p.m.", "The Specialty Pharmacy, located on the main level (0) of the Cancer Center. It cares for the unique needs of Cancer Center patients. They also specialize in the prescription services of solid organ transplant patients with plans to expand to other specialty disease stes in the future and offer a wide variety of commonly used over-the-counter medications. Open Monday - Friday, 8:30 a.m. to 6:00 p.m. For more information, call 919-613-3990.", "", ""]
    var POIImages = ["rooftopGarden.jpg", "boutique.jpg", "default.jpg", "quietRoom.jpg", "default.jpg", "default.jpg", "default.jpg", "commonArea.jpg", "chapel.jpg"]
    
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
        return POITitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("POITableViewCell", forIndexPath: indexPath) as! POITableViewCell
        let row = indexPath.row
        cell.POILabel.text = POITitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowPOIDetails" {
            let detailViewController = segue.destinationViewController as! POIDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = POITitles[row]
            detailViewController.myDescription = POIDescriptions[row]
            detailViewController.myImage = POIImages[row]
        }
    }
}
