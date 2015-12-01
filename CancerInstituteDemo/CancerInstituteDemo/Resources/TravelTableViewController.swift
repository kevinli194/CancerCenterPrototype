//
//  TravelTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class TravelTableViewController: UITableViewController {
    
    //data arrays
    var travelTitles = ["Help", "Long-term lodging", "Concierge Services", "Patient Advocates"]
    var travelDescriptions = [
        "Duke Cancer Center is approximately 16 miles from the Raleigh-Durham International airport (RDU). Taxis, shuttles and public transportation are available at the airport. Some hotels also offer transportation assistance. When making a reservations at a hotel, be sure to ask about shuttle services and a medical room rate. Many local hotels offer discounts to patients receiving care at the Duke Cancer Center. Duke Concierge Services partners with select hotels and inns to secure special medical rates. Families and visitors can find additional information about patient services, resources and support at dukemedicine.org/lodging. For more information about the City of Durham, visit the Durham Convention and Visitors Bureau at durham-nc.com.",
        "Caring House offers comfortable and affordable housing for adults receiving outpatient treatment at the Duke Cancer Institute and their caregivers. Rooms are $35 per night and are available for long and short-term stays. A referral from a clinical social worker or patient resource manager is needed for first-time guests. For more information call 919.490.5449 or visit caringhouse.org. \n \nRonald McDonald House provides temporary housing for pediatric patients and their families. A referral from a clinical social worker or patient resource manager is needed for first-time guests. For more information, call 919.286.9305. \n \nThe Host Homes program is sponsored by Duke Patient Information Services and can assist with lodging in private homes. A nominal need-based fee is charged for this lodging. For more information, please call 919.681.4688.",
        "Designed to serve patients and their families, Duke Concierge Services provides guidance for lodging, dining, personal services, entertainment, sporting events and more. Duke Concierge Services has partnered with several local hotels to provide patients and their families with concierge rates. To secure a concierge rate or for more information, call 919.681.4947.",
        "The Department of Patient and Visitor Relations assists patients and their families. As advocates for you and your family, patient representatives can listen to and follow up on your concerns, answer questions or direct your request to the appropriate hospital department and arrange for special services or direct you to resources in the community. For more information, call 919.681.2020."]
    var travelImages = ["default.jpg", "default.jpg", "default.jpg", "default.jpg"]
    
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
        return travelTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //set up table view
        let cell = self.tableView.dequeueReusableCellWithIdentifier("TravelTableViewCell", forIndexPath: indexPath) as! TravelTableViewCell
        let row = indexPath.row
        cell.travelLabel.text = travelTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //navigate to new pages via segues
        if segue.identifier == "ShowTravelDetails" {
            let detailViewController = segue.destinationViewController as! TravelDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = travelTitles[row]
            detailViewController.myDescription = travelDescriptions[row]
            detailViewController.myImage = travelImages[row]
        }
    }
}
