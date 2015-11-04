//
//  TodayViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/4/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class TodayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    struct mEventData {
        var eventName:String
        var eventDetails:String
        var eventImage: String
        
    }
    var tableData: [mEventData] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableData = [mEventData(eventName: "Spiritual Self Care — Quiet Room" , eventDetails: "Spiritual Self Care is a chaplain-led group held in the Quiet Room. Sessions include reflection on spiritual health and wellness, tools for spiritual-emotional resilience/coping and care planning. Sessions are also available in-clinic, inpatient or by phone. For inquiries, contact Annette Olsen, Chaplain, at 919.684.2843 or email at annette.olsen@duke.edu. ", eventImage: "cancer_sample.jpg"), mEventData(eventName: "Open Meditation —Quiet Room", eventDetails: "Facilitated drop-in sessions are open to persons of diverse religious and philosophical beliefs. All experience levels are welcome. Sessions include an introduction to a technique, practice period and closing. For more information or inquires, call Annette Olsen, Chaplain, at 919.684.2843 or email at annette.olsen@duke.edu. ", eventImage: "meditation.png"), mEventData(eventName: "Write For You — 0 Level Conf. Room", eventDetails: "Discover how journaling can help you express emotions and thoughts, reduce anxiety, promote healthy creativity and help organize your life. Hosted by Arts & Health at Duke, participants receive complimentary journals, poetry packets and more. Write For You is held in the Level 0 Conference Room. Drop-ins are welcome. For more information, call 919.613.6601 or email katja.hill@duke.edu.", eventImage: "writing.jpg"), mEventData (eventName: "Tai Chi — Quiet Room", eventDetails: "Tai Chi is a holistic health practice that brings the mind and body together with slow, graceful, flowing movements performed in a meditative manner. Tai Chi is held in the Quiet Room. Registration is not required. Drop-ins are welcome. For more information, email kristy.everette@duke.edu.", eventImage: "taichi.png")]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Create a new cell with the reuse identifier of our prototype cell
        // as our custom table cell class
        let cell = tableView.dequeueReusableCellWithIdentifier("EventCell") as! TodayEventCell
        // Set the first row text label to the firstRowLabel data in our current array item
        cell.eventDetails.text = tableData[indexPath.row].eventDetails
        // Set the second row text label to the secondRowLabel data in our current array item
        cell.eventName.text = tableData[indexPath.row].eventName
        //Set image
        cell.eventImage.contentMode = .ScaleAspectFill
        cell.eventImage.image = UIImage(named: tableData[indexPath.row].eventImage)
        // Return our new cell for display
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
