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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    /*
    convenience init(identifier detailsCalendar: String?, source MoreViewController: UIViewController, destination CalendarViewController: UIViewController performHandler performHandler: () -> Void) {
    }
    */
    
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
            //vc.presentViewController(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
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
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
