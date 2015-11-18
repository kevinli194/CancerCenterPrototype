//
//  SecondViewController.swift
//  DCI
//
//  Created by Georgia Tse on 9/24/15.
//  Copyright © 2015 Georgia Tse. All rights reserved.
//

import UIKit

class AppointmentController: UIViewController {
    
    var myProvider: String?
    var myTime: Int = 0
    var myClinic: String?
    var people = ["J. Abbruzzese", "R. Bain", "A. Berchuck", "M. Berry", "K. Blackwell", "D. Blazer", "R. Blitzblau", "B. Bohinc", "A. Desjardins", "L. Farkas", "A. Friedman", "H. Friedman", "G. Georgiade", "R. Greenup", "B. Hanks", "D. Harpole", "M. Hartwig", "L. Havrilesky", "J. Horton", "D. Hsu", "S. Hwang", "A.  Kamal", "C. Kelsey", "G. Kimmick", "P. Lee", "C. Mantyh", "P. Marcom", "M. Morse", "P. Mosca", "M. Onaitis", "J. Peppercorn", "J. Perkins", "K. Peters", "T. Ranjan", "N. Ready", "S. Roman", "A. Salama", "J. Sampson", "R. Scheri", "A. Secord", "J. Sosa", "D. Tyler", "G. Vlahovic", "M. Wahidi", "K. Westbrook", "B. White", "M. Zenn"]
    var people2 = ["A. Friedman", "H. Friedman"]
    var descriptions = ["What we specialize in at The Preston Robert Tisch Brain Tumor Center is compassionate care – we take care of our patients. It’s complete care. The patients don’t have to go out and find a radiologist. We have the radiation oncologist, the chemotherapy, the surgery, the radiology, we have all kinds of nursing people as well as help getting physical therapy and getting in-the-home assistance. Patients also can expect cutting-edge care because we run such a terrific science program here. I really like working with the patients. No question about it. It’s not that I’m doing some trivial procedure six times a day. When someone comes in with a brain tumor, there’s usually some bonding, and instead of running away from that, I really enjoy it.", "I am an academic adult and pediatric neuro-oncologist who helps lead The Preston Robert Tisch Brain Tumor Center at Duke. I am the author of more than 500 peer-reviewed articles, reviews, and book chapters, and I have presented extensively at both international and national meetings. I am a committed educator who is a member of the executive and super-executive committees of the Duke University School of Medicine, which are responsible for the recruitment, screening and selection of medical students. I have reviewed grants for the National Institutes of Health for over 15 years, in a spectrum of different study sections. I am the senior editor of CNS Oncology, associate editor for the Neuro-Oncology Section of Cancer, and a reviewer for over 25 academic journals. I serve on the advisory board of a number of organizations, including Voices Against Brain Cancer, the Tug McGraw Foundation, Pinnacle Care, the Pediatric Brain Tumor Foundation, the National Children’s Cancer Society, and the American Brain Tumor Association."]
    var photos = ["AFriedman.jpg", "HFriedman.jpg"]
    
    @IBOutlet weak var curProvider: UILabel!
    @IBOutlet weak var curTime: UILabel!
    @IBOutlet weak var curClinic: UILabel!
    @IBOutlet weak var curDescription: UILabel!
    @IBOutlet weak var curImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueGradient.jpg")!)
        curProvider.text = "Dr. " + myProvider!
        if myTime == 0 {
            curTime.textColor = UIColor.greenColor()
            curTime.text = "On Time"
        }
        else if myTime > 30 {
            curTime.textColor = UIColor.redColor()
            curTime.text = String(myTime) + "min Late"
        }
        else {
            curTime.textColor = UIColor.yellowColor()
            curTime.text = String(myTime) + "min Late"
        }
        curClinic.text = myClinic
        
        //let myPhoto = photos[people.indexOf(curProvider.text!)!]
        //curImage.image = UIImage(named: photos[people2.indexOf(curProvider.text!)!])
        //curDescription.text = descriptions[people2.indexOf(curProvider.text!)!]
        
        if curProvider.text!.containsString("A. Friedman"){
            curDescription.text = "What we specialize in at The Preston Robert Tisch Brain Tumor Center is compassionate care – we take care of our patients. It’s complete care. The patients don’t have to go out and find a radiologist. We have the radiation oncologist, the chemotherapy, the surgery, the radiology, we have all kinds of nursing people as well as help getting physical therapy and getting in-the-home assistance. Patients also can expect cutting-edge care because we run such a terrific science program here. I really like working with the patients. No question about it. It’s not that I’m doing some trivial procedure six times a day. When someone comes in with a brain tumor, there’s usually some bonding, and instead of running away from that, I really enjoy it."
            curImage.image = UIImage(named: "AFriedman.jpg")
        }
        
        else if curProvider.text!.containsString("H. Friedman"){
            curDescription.text = "I am an academic adult and pediatric neuro-oncologist who helps lead The Preston Robert Tisch Brain Tumor Center at Duke. I am the author of more than 500 peer-reviewed articles, reviews, and book chapters, and I have presented extensively at both international and national meetings. I am a committed educator who is a member of the executive and super-executive committees of the Duke University School of Medicine, which are responsible for the recruitment, screening and selection of medical students. I have reviewed grants for the National Institutes of Health for over 15 years, in a spectrum of different study sections. I am the senior editor of CNS Oncology, associate editor for the Neuro-Oncology Section of Cancer, and a reviewer for over 25 academic journals. I serve on the advisory board of a number of organizations, including Voices Against Brain Cancer, the Tug McGraw Foundation, Pinnacle Care, the Pediatric Brain Tumor Foundation, the National Children’s Cancer Society, and the American Brain Tumor Association."
            curImage.image = UIImage(named: "duvall.jpg")
        }
        else {
            curDescription.text = "I am an academic adult and pediatric neuro-oncologist who helps lead The Preston Robert Tisch Brain Tumor Center at Duke. I am the author of more than 500 peer-reviewed articles, reviews, and book chapters, and I have presented extensively at both international and national meetings. I am a committed educator who is a member of the executive and super-executive committees of the Duke University School of Medicine, which are responsible for the recruitment, screening and selection of medical students. I have reviewed grants for the National Institutes of Health for over 15 years, in a spectrum of different study sections. I am the senior editor of CNS Oncology, associate editor for the Neuro-Oncology Section of Cancer, and a reviewer for over 25 academic journals. I serve on the advisory board of a number of organizations, including Voices Against Brain Cancer, the Tug McGraw Foundation, Pinnacle Care, the Pediatric Brain Tumor Foundation, the National Children’s Cancer Society, and the American Brain Tumor Association."
            curImage.image = UIImage(named: "defultPhoto.jpg")
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

