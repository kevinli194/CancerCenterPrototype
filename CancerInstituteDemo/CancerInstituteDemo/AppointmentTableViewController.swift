//
//  AppointmentTableViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/11/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class AppointmentTableViewController : UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {

    var providers = [Provider]()
    var filteredProviders = [Provider]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigation bar background
        self.navigationController?.navigationBar.barTintColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        
        //full view background
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        
        //load all of the provides into table view
        self.providers = [Provider(name:"J. Abbruzzese", clinic:"Clinic 3-2", time:0),
            Provider(name:"R. Bain", clinic:"Clinic 3-2", time:60),
            Provider(name:"A. Berchuck", clinic:"Clinic 2-2", time:15),
            Provider(name:"M. Berry", clinic:"Clinic 3-2", time:10),
            Provider(name:"K. Blackwell", clinic:"Clinic 2-2", time:0),
            Provider(name:"D. Blazer", clinic:"Clinic 3-2", time:15),
            Provider(name:"A. Desjardins", clinic:"Clinic 3-1", time:20),
            Provider(name:"A. Friedman", clinic:"Clinic 2-2", time:0),
            Provider(name:"H. Friedman", clinic:"Clinic 3-2", time:60),
            Provider(name:"R. Greenup", clinic:"Clinic 2-2", time:0),
            Provider(name:"B. Hanks", clinic:"Clinic 3-2", time:40),
            Provider(name:"D. Harpole", clinic:"Clinic 3-2", time:0),
            Provider(name:"M. Hartwig", clinic:"Clinic 3-2", time:0),
            Provider(name:"S. Hwang", clinic:"Clinic 2-2", time:0),
            Provider(name:"A. Kamal", clinic:"Clinic 3-2", time:90),
            Provider(name:"C. Kelsey", clinic:"Clinic 3-2", time:0),
            Provider(name:"G. Kimmick", clinic:"Clinic 2-2", time:0),
            Provider(name:"P. Lee", clinic:"Clinic 2-2", time:15),
            Provider(name:"C. Mantyh", clinic:"Clinic 3-2", time:0),
            Provider(name:"P. Marcom", clinic:"Clinic 2-2", time:0),
            Provider(name:"P. Mosca", clinic:"Clinic 3-2", time:20),
            Provider(name:"M. Onaitis", clinic:"Clinic 3-2", time:10),
            Provider(name:"J. Perkins", clinic:"Clinic 2-2", time:60),
            Provider(name:"N. Ready", clinic:"Clinic 3-2", time:0),
            Provider(name:"S. Roman", clinic:"Clinic 2-2", time:0),
            Provider(name:"A. Salama", clinic:"Clinic 3-2", time:0),
            Provider(name:"J. Sampson", clinic:"Clinic 3-1", time:0),
            Provider(name:"R. Scheri", clinic:"Clinic 2-2", time:20),
            Provider(name:"A. Secord", clinic:"Clinic 2-2", time:0),
            Provider(name:"J. Sosa", clinic:"Clinic 2-2", time:40),
            Provider(name:"M. Wahidi", clinic:"Clinic 3-2", time:90),
            Provider(name:"M. Zenn", clinic:"Clinic 2-2", time:0)]
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //filteredProviders is with one of the clinics chosen
        if tableView == self.searchDisplayController!.searchResultsTableView {
            return self.filteredProviders.count
        } else {
            return self.providers.count
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //put array of provides into the table
        let cell = self.tableView.dequeueReusableCellWithIdentifier("AppointmentTableViewCell", forIndexPath: indexPath) as UITableViewCell
        var doctor : Provider
        if tableView == self.searchDisplayController!.searchResultsTableView {
            doctor = filteredProviders[indexPath.row]
        } else {
            doctor = providers[indexPath.row]
        }
        
        //cell background & text color
        cell.textLabel!.text = doctor.name
        cell.textLabel!.textColor = UIColor.whiteColor()
        cell.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("ShowAppointmentDetails", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        //setup segues to detail provides -> filteredProviders is with one of the clinics chosen
        if segue.identifier == "ShowAppointmentDetails" {
            let appointmentDetailViewController = segue.destinationViewController as! AppointmentController
            if sender as! UITableView == self.searchDisplayController!.searchResultsTableView {
                let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow!
                appointmentDetailViewController.myProvider = self.filteredProviders[indexPath.row].name
                appointmentDetailViewController.myClinic = self.filteredProviders[indexPath.row].clinic
                appointmentDetailViewController.myTime = self.filteredProviders[indexPath.row].time
            } else {
                let indexPath = self.tableView.indexPathForSelectedRow!
                appointmentDetailViewController.myProvider = self.providers[indexPath.row].name
                appointmentDetailViewController.myClinic = self.providers[indexPath.row].clinic
                appointmentDetailViewController.myTime = self.providers[indexPath.row].time
            }
        }
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        
        //filtering doctors by clinic feature
        self.filteredProviders = self.providers.filter({( doctor: Provider) -> Bool in
            let categoryMatch = (scope == "All") || (doctor.clinic == scope)
            let stringMatch = doctor.name.rangeOfString(searchText)
            return categoryMatch && (stringMatch != nil)
        })
    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchString searchString: String?) -> Bool {
        let scopes = self.searchDisplayController!.searchBar.scopeButtonTitles! as [String]
        let selectedScope = scopes[self.searchDisplayController!.searchBar.selectedScopeButtonIndex] as String
        self.filterContentForSearchText(searchString!, scope: selectedScope)
        return true
    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchScope searchOption: Int) -> Bool {
        let scope = self.searchDisplayController!.searchBar.scopeButtonTitles! as [String]
        self.filterContentForSearchText(self.searchDisplayController!.searchBar.text!, scope: scope[searchOption])
        return true
    }
}
