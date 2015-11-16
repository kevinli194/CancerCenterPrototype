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
        self.providers = [Provider(name:"Dr. Edward Dale", clinic:"Clinic 1", time:20),
            Provider(name:"Dr. Anderson Bishop", clinic:"Clinic 2", time:0),
            Provider(name:"Dr. Bjorn-Steffansson", clinic:"Clinic 5", time:20),
            Provider(name:"Dr. Elsie Edith", clinic:"Clinic 1", time:15),
            Provider(name:"Dr. Arthur Jackson", clinic:"Clinic 1", time:60),
            Provider(name:"Dr. Helen Hungerford", clinic:"Clinic 1", time:0),
            Provider(name:"Dr. Drake Martinez", clinic:"Clinic 1", time:60),
            Provider(name:"Dr. William Ernest", clinic:"Clinic 3", time:0),
            Provider(name:"Dr. Norman Campbell", clinic:"Clinic 1", time:90),
            Provider(name:"Dr. Edward Gifford", clinic:"Clinic 1", time:10),
            Provider(name:"Dr. Albert Adrian", clinic:"Clinic 1", time:0),
            Provider(name:"Dr. Edith Corse", clinic:"Clinic 2", time:45),
            Provider(name:"Dr. Henry William", clinic:"Clinic 3", time:15),
            Provider(name:"Dr. George Achilles", clinic:"Clinic 1", time:40),
            Provider(name:"Dr. Frederick Maxfield", clinic:"Clinic 2", time:30),
            Provider(name:"Dr. Charles Cresson", clinic:"Clinic 4", time:0),
            Provider(name:"Dr. Edwin Nelson", clinic:"Clinic 1", time:0),
            Provider(name:"Dr. Lindsey James", clinic:"Clinic 1", time:0),
            Provider(name:"Dr. Georgette Alexandra", clinic:"Clinic 1", time:10),
            Provider(name:"Dr. Clarence Bloomfield", clinic:"Clinic 1", time:0),
            Provider(name:"Dr. Helen Monypeny", clinic:"Clinic 2", time:15)]
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.searchDisplayController!.searchResultsTableView {
            return self.filteredProviders.count
        } else {
            return self.providers.count
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("AppointmentTableViewCell", forIndexPath: indexPath) as UITableViewCell
        var doctor : Provider
        if tableView == self.searchDisplayController!.searchResultsTableView {
            doctor = filteredProviders[indexPath.row]
        } else {
            doctor = providers[indexPath.row]
        }
        cell.textLabel!.text = doctor.name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("ShowAppointmentDetails", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
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
