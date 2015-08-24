//
//  tableCellTableViewCell.swift
//  WUCultural
//
//  Created by Mar Nesbitt on 8/23/15.
//  Copyright (c) 2015 Mar Nesbitt. All rights reserved.
//

import UIKit

class tableCellTableViewCell: UITableViewCell {

    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventPrice: UILabel!
    @IBOutlet weak var eventTime: UILabel!
    @IBOutlet weak var culturalEvent: UILabel!
    @IBOutlet weak var verified: UIView!
    @IBOutlet weak var eventDesciption: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
