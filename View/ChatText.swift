//
//  ChatText.swift
//  events
//
//  Created by William Musumba on 22/02/2018.
//  Copyright © 2018 William Musumba. All rights reserved.
//

import UIKit

class ChatText: UITextView {

    override func layoutSubviews() {
        layer.cornerRadius = 12
        clipsToBounds = true
        //backgroundColor = UIColor.lightGray
    }

}
