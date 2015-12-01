//
//  SupportTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SupportTableViewController: UITableViewController {
    
    //data arrays
    var supportTitles = ["Blood Cancers", "Breast and Gyn Cancers", "Caregiver", "GI and Pancreatic Cancer", "GU Cancers", "Lung Cancer", "Prostate Cancer", "Mind-Body Approaches to Coping", "KidsCan!"]
    var supportDescriptions = [
        "This support group is for families and individuals experiencing leukemia, lymphoma, and multiple myeloma.",
        "Individuals with breast and gynecologic cancer are invited to join this support group.",
        "Are you the primary caregiver for loved one battling cancer? Join the Caregiver support group. Our meetings are held the first and third Wednesdays of every month from 4:00 to 5:30 p.m.",
        "This support group is for gastrointestinal and pancreatic cancer patients and their family members.",
        "This support group is for patients with genitourinary cancers and their family members.",
        "This group is for patients and families coping with lung cancer.",
        "This support group is for prostate cancer patients and their families. Meetings are usually held on the fourth Monday of every month.",
        "Patients with cancer are invited to participate in a class to learn mind-body approaches to coping with cancer.",
        "KidsCan! is a program designed to support children, ages 4 to 18, who have a parent or significant caregiver living with  diagnosis of cancer. Kids groups focus on issues, such as understanding cancer, changes in the family, feelings, self-care ,memories, cooperation, love and family. A simultaneous group is also available for parents. To register, please call 919.684.2913 ore-mail Jean.Hartford.Todd@duke.edu."]
    var supportImages = ["default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg",]
    
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
        return supportTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //set up table view
        let cell = self.tableView.dequeueReusableCellWithIdentifier("SupportTableViewCell", forIndexPath: indexPath) as! SupportTableViewCell
        let row = indexPath.row
        cell.supportLabel.text = supportTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //navigate to new pages via segues
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
