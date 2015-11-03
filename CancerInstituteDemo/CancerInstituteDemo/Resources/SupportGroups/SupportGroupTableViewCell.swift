//
//  SupportGroupTableViewCell.swift
//  CancerInstituteDemo
//
//  Created by Anna Benson on 10/19/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class SupportGroupTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var SupportLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
