//
//  POITableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class POITableViewController: UITableViewController {
    
    
    //data arrays
    var POITitles = ["Rooftop Garden", "Belk Boutique",
        "Café", "Quiet Room", "Resource Center",
        "Specialty Pharmacy", "Common Areas"]
    var POIDescriptions = [
        "The Bernstein Family Garden is an outdoor rooftop garden area located on the fourth floor where patients and families can enjoy the fresh air and beautiful North Carolina vegetation. Patients are also welcome to consult their medical providers to see if their treatment regimen allows them to receive chemotherapy outdoors.",
        "The Belk Boutique is conveniently located on the 0 Level of the Cancer Center. The Boutique offers self-image products and services to help patients and their family members adapt to changes they may experience throughout their cancer journey: including attending to changes in body image; physical changes as a result of treatment, and sexual health and intimacy. Complementary salon services and make-up consultation are offered each month.  The hours of operation are Monday through Friday from 9 a.m. to 4 p.m. For more information, call 919.613.1906.",
        "The Duke Cancer Center Café offers indoor and outdoor seating, a healthy menu featuring local farm-fresh fruits and vegetables and, from time-to-time, cooking demonstrations.",
        "The Quiet Room provides a tranquil space where patients and their families can take time to reflect, relax, meditate or pray. The Quiet Room inspires peace, quiet and spiritual meditation for individuals of all faiths. Belk Boutique – Level 0 The 1,000-square-foot Belk Boutique offers the latest trends in wigs, hats, caps, scarves, self-image products, post-surgical garments and prosthetics — items and resources cancer patients need as they journey toward recovery. Private consultation rooms are available. The boutique is open Monday through Friday, from 9 a.m. to 4 p.m. For more information, call 919.613.1906.",
        "The Resource Center works with your healthcare team to provide written and online information on specific types of cancer treatments, side effects, coping strategies, family issues, nutrition questions and more. The center offers educational materials, computer kiosks and a skills lab for patients and their families. Books, video and audio tapes, periodicals, brochures, magazines and more are available to patients and their families. The Resource Center is open Monday through Friday, from 8 a.m. to 4 p.m. For more information, call 919.684.6955.",
        "The Specialty Pharmacy, located on the main level (0) of the Cancer Center. It cares for the unique needs of Cancer Center patients. They also specialize in the prescription services of solid organ transplant patients with plans to expand to other specialty disease stes in the future and offer a wide variety of commonly used over-the-counter medications. Open Monday - Friday, 8:30 a.m. to 6:00 p.m. For more information, call 919-613-3990.",
        "Beginning in the soaring central atrium, the Duke Cancer Center’s common spaces foster a feeling of comfort and relaxation. Clinics offer spacious, comfortable waiting areas featuring large windows and natural light. Host stations can be found in waiting areas where volunteers provide information about patient resources."]
    var POIImages = ["rooftopGarden.jpg", "boutique.jpg", "default.jpg", "quietRoom.jpg", "resourceCenter.png", "default.jpg", "default.jpg", "commonArea.jpg"]
    
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
        return POITitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //set up table view
        let cell = self.tableView.dequeueReusableCellWithIdentifier("POITableViewCell", forIndexPath: indexPath) as! POITableViewCell
        let row = indexPath.row
        cell.POILabel.text = POITitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //navigate to new pages via segues
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
