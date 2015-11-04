//
//  CalendarViewController.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/4/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit
import CVCalendar

class CalendarViewController: UIViewController, CVCalendarViewDelegate, CVCalendarMenuViewDelegate {
    
    
    @IBOutlet weak var menuView: CVCalendarMenuView!

    @IBOutlet weak var calendarView: CVCalendarView!
   
    
    @IBOutlet weak var eventDescription: UITextView!
    var displayText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    //MARK: Functions that conform to CVCalendarViewDelegate
    func presentationMode() -> CalendarMode {
        return CalendarMode.MonthView
    }
    func firstWeekday() -> Weekday {
        return Weekday.Sunday
    }
    
    func displayData(data: String) {
        displayText = data;
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        calendarView.commitCalendarViewUpdate()
        menuView.commitMenuViewUpdate()
        eventDescription.text = displayText
        
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
