//
//  SupportTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/3/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SupportTableViewController: UITableViewController {

    var supportTitles = ["Blood Cancers", "Breast and Gyn Cancers", "Caregiver", "GI and Pancreatic Cancer", "GU Cancers", "Lung Cancer", "Prostate Cancer", "Mind-Body Approaches to Coping", "KidsCan!"]
    var supportDescriptions = [
        "This support group is for families and individuals experiencing leukemia, lymphoma, and multiple myeloma.",
        "Individuals with breast and gynecologic cancer are invited to join this support group.",
        "Caregivers of patients with cancer are invited to join this support group.",
        "This support group is for gastrointestinal and pancreatic cancer patients and their family members.",
        "This group is for patients and families coping with lung cancer.",
        "This support group is for prostate cancer patients and their families. Meetings are usually held on the fourth Monday of every month.",
        "Patients with cancer are invited to participate in a class to learn mind-body approaches to coping with cancer.",
        "KidsCan! is a program designed to support children, ages 4 to 18, who have a parent or significant caregiver living with  diagnosis of cancer. Kids groups focus on issues, such as understanding cancer, changes in the family, feelings, self-care ,memories, cooperation, love and family. A simultaneous group is also available for parents. To register, please call 919.684.2913 ore-mail Jean.Hartford.Todd@duke.edu."]
    var supportImages = ["default.png", "default.png", "default.png", "default.png", "default.png", "default.png", "default.png", "default.png", "default.png",]
    
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
        return supportTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("SupportTableViewCell", forIndexPath: indexPath) as! SupportTableViewCell
        let row = indexPath.row
        cell.supportLabel.text = supportTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowSupportDetails" {
            let detailViewController = segue.destinationViewController as! SupportDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = supportTitles[row]
            detailViewController.myDescription = supportDescriptions[row]
            detailViewController.myImage = supportImages[row]
        }
    }
}
