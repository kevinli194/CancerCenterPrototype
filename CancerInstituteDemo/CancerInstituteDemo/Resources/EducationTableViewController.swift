//
//  EducationTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class EducationTableViewController: UITableViewController {
    
    //data arrays
    var educationTitles = ["Chemotherapy Education Class", "Options For Breast Reconstruction", "Cancer Nutrition Virtual Class", "Quitting Smoking", "Diabetes Education", "Free Legal Services"]
    var educationDescriptions = [
        "Will you be starting chemotherapy in the near future? Do you have questions about the possible side effects? Or do you just want more information about your treatment? Our Chemotherapy Education Class can address these questions and more. This class is led by a nurse or pharmacist and includes a Q&A time. Registration is not required. Family and friends are welcome.",
        "Jo Ann Garofalo, RN, CPSN, Division of Plastic and Reconstructive Surgery, leads this monthly informational class on breast reconstructive surgery after mastectomy. The class is small and private. However, it is open to anyone wanting more information on options at Duke.",
        "This 30-minute virtual class covers symptom management during treatment, eating problems, weight loss, how to manage symptoms and recommended diets to keep you well-nourished and hydrated. This class is available daily from 8 to 4 p.m.",
        "A certified tobacco treatment specialist nurse discusses techniques and programs to help you quit smoking.",
        "The Diabetes Education Class helps patients reduce risks and complications to improve the cancer treatment out-come. Walk-ins are alway welcome.",
        "Duke Law offers free legal services to Duke’s cancer patients. Services include assistance in drafting legal documents: power of attorney, healthcare power of attorney, living will and HIPAA release forms. For times or to schedule an appointment, please call 919.613.7278."]
    var educationImages = ["chemoEducation.jpg", "default.jpg", "default.jpg", "default.jpg", "default.jpg", "lawServices.jpg"]
    
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
        return educationTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //set up table view
        let cell = self.tableView.dequeueReusableCellWithIdentifier("EducationTableViewCell", forIndexPath: indexPath) as! EducationTableViewCell
        let row = indexPath.row
        cell.educationLabel.text = educationTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //navigate to new pages via segues
        if segue.identifier == "ShowEducationDetails" {
            let detailViewController = segue.destinationViewController as! EducationDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = educationTitles[row]
            detailViewController.myDescription = educationDescriptions[row]
            detailViewController.myImage = educationImages[row]
        }
    }
}
