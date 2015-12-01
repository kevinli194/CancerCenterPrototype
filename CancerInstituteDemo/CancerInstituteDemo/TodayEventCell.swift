//
//  TodayEventCell.swift
//  CancerInstituteDemo
//
//  Created by Kevin Li on 10/19/15.
//  Copyright © 2015 KAG. All rights reserved.
//

import UIKit

class TodayEventCell: UITableViewCell {

    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventName: UITextView!
    @IBOutlet weak var eventDetails: UITextView!
    
    @IBOutlet weak var cardView: CardView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
