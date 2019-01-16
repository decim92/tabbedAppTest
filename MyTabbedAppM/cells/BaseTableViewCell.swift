//
//  BaseTableViewCell.swift
//  MyTabbedApp
//
//  Created by Douglas on 1/14/19.
//  Copyright © 2019 Douglas. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    
    @IBOutlet weak var aLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
