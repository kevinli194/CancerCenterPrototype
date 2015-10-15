//
//  MoreViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/4/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class MoreViewController: UITableViewController {

    var resources = [Resource]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resources = [Resource(item: "Calendar"), Resource(item: "Points of Interest"), Resource(item: "Support Groups"), Resource(item: "Educational Classes"), Resource(item: "Rest, Renew & Relax"), Resource(item: "Special Events"), Resource(item: "Travel & Lodging"), Resource(item: "Settings")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.resources.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
    
        var resource : Resource
        
        resource = resources[indexPath.row]
        
        cell.textLabel?.text = resource.item
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("CalendarSegue", sender: self)
        }
        if indexPath.row == 1 {
            self.performSegueWithIdentifier("POISegue", sender: self)
        }
        if indexPath.row == 2 {
            self.performSegueWithIdentifier("SupportGroupsSegue", sender: self)
        }
        if indexPath.row == 3 {
            self.performSegueWithIdentifier("EducationSegue", sender: self)
        }
        if indexPath.row == 4 {
            self.performSegueWithIdentifier("RestSegue", sender: self)
        }
        if indexPath.row == 5 {
            self.performSegueWithIdentifier("SpecialEventsSegue", sender: self)
        }
        if indexPath.row == 6 {
            self.performSegueWithIdentifier("TravelSegue", sender: self)
        }
        if indexPath.row == 7 {
            self.performSegueWithIdentifier("SettingsSegue", sender: self)
        }
        
    }
    /*
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = self.tableView.cellForRowAtIndexPath(indexPath)
        if(cell?.textLabel?.text == "Calendar"){
            cell?.targetForAction("CalendarSegue", withSender: self)
        }
        if(cell?.textLabel == "Calendar"){
            cell?.targetForAction("CalendarSegue", withSender: self)
        }
    // cell = self.tableView.cellForRowAtIndexPath(indexPath)
    //print ("You selected cell #\(cellnum)!")
    }

    override func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
        let cell = self.tableView.cellForRowAtIndexPath(indexPath)
        if(cell?.textLabel?.text == "Calendar"){
            cell?.targetForAction("CalendarSegue", withSender: self)
        }
        if(cell?.textLabel == "Calendar"){
            cell?.targetForAction("CalendarSegue", withSender: self)
        }
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        /*if let identifier = segue.identifier {
            switch identifier {
                case "detailsCalendar":
                case "detailsEducation":
                    let cell = sender as }
        }*/
        
        if(segue.identifier == "detailsCalendar"){
            let vc = segue.destinationViewController as! CalendarViewController
            vc.presentingViewController
            //vc.presentViewController(viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)?)
            //indexpath = [Resource, indexPathforselectedRow]
        }
        
        if(segue.identifier == "detailsEducation"){
            let vc = segue.destinationViewController as! EducationalClassesViewController
            vc.presentingViewController
        }
    }
    
    /* HOW TO DO THIS IN OBJECTIVE C

    (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        
        if ([[segue identifier] isEqualToString:@"ShowCarDetails"]){
           
            CarDetailViewController *detailViewController =[segue destinationViewController];

            NSIndexPath *myIndexPath = [self.tableViewindexPathForSelectedRow];

            long row = [myIndexPath row];

            detailViewController.carDetailModel = @[_carMakes[row], _carModels[row], _carImages[row]];
        }
    }

*/

    /*
    convenience init(identifier detailsCalendar: String?, source MoreViewController: UIViewController, destination CalendarViewController: UIViewController performHandler performHandler: () -> Void) {
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
*/

}
