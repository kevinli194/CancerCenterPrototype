//
//  Rest.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 11/2/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class Rest {
    // MARK: Properties
    
    var name: String
    //var photo: UIImage?
    //var rating: Int
    
    // MARK: Initialization
    
    //init?(name: String, photo: UIImage?) {
    init?(name: String) {
        
        // Initialize stored properties.
        self.name = name
        //self.photo = photo
        
        if name.isEmpty {
            return nil
        }
    }
}