//
//  RestTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/9/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class RestTableViewController: UITableViewController {
    
    
    //data arrays
    var restTitles = ["Spiritual Self Care", "Open Meditation", "Write For You", "Tai Chi", "Pet Therapy"]
    var restDescriptions = [
        "Spiritual Self Care is a chaplain-led group for spiritual self-care planning. Sessions include reflection on spiritual health and wellness, tools for spiritual-emotional resilience/coping and care planning. Sessions are also available in-clinic, inpatient or by phone. For inquiries, contact Annette Olsen, Chaplain, at 919.684.2843 or email at annette.olsen@duke.edu.",
        "Facilitated drop-in sessions are open to persons of diverse religious and philosophical beliefs. All experience levels are welcome. Sessions include an introduction to a technique, practice period and closing. For more information or inquires, call Annette Olsen, Chaplain, at 919.684.2843 or email at annette.olsen@duke.edu.",
        "Discover how journaling can help you express emotions and thoughts, reduce anxiety, promote healthy creativity and help organize your life. Hosted by Arts & Health at Duke, participants receive complimentary journals, poetry packets and more. Write For You is held in the Level 0 Conference Room. Drop-ins are welcome. For more information, call 919.613.6601 or email katja. hill@duke.edu.",
        "Tai Chi is a holistic health practice that brings the mind and body together with slow, graceful, flowing movements performed in a meditative manner. Tai Chi is held in the Quiet Room. Registration is not required. Drop-ins are welcome. For more information, email Kristy.everette@duke.edu.",
        "The Pets At Duke Therapy Program is routinely available in our lobbies. To learn more about Pets At Duke or to schedule an appointment, email kristy.everette@duke.edu."]
    var restImages = ["quietRoom.jpg", "quietRoom.jpg", "writeForYou.jpg", "quietRoom.jpg", "petTherapy.jpg"]
    
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
        return restTitles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //set up table view
        let cell = self.tableView.dequeueReusableCellWithIdentifier("RestTableViewCell", forIndexPath: indexPath) as! RestTableViewCell
        let row = indexPath.row
        cell.restLabel.text = restTitles[row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //navigate to new pages via segues
        if segue.identifier == "ShowRestDetails" {
            let detailViewController = segue.destinationViewController as! RestDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.myTitle = restTitles[row]
            detailViewController.myDescription = restDescriptions[row]
            detailViewController.myImage = restImages[row]
        }
    }
}
