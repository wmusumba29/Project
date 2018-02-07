//
//  Inboxcell.swift
//  events
//
//  Created by William Musumba on 07/02/2018.
//  Copyright © 2018 William Musumba. All rights reserved.
//

import UIKit

class Inboxcell: UITableViewCell {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
