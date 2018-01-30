//
//  AddProfileVC.swift
//  events
//
//  Created by William Musumba on 07/01/2018.
//  Copyright © 2018 William Musumba. All rights reserved.
//

import UIKit

class AddProfileVC: UIViewController {
    @IBOutlet weak var overviewContainer: UIView!
    @IBOutlet weak var featuresContainer: UIView!
    @IBOutlet weak var capacityContainer: UIView!
    @IBOutlet weak var caterogyContainer: UIView!
    @IBOutlet weak var photosContainer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.overviewContainer.alpha = 1
        self.capacityContainer.alpha = 0
        self.caterogyContainer.alpha = 0
        self.featuresContainer.alpha = 0
        self.photosContainer.alpha = 0

    }


   
    @IBAction func showContainerPressed(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            UIView.animate(withDuration: 0.5, animations: {
                self.overviewContainer.alpha = 1
                self.capacityContainer.alpha = 0
                self.caterogyContainer.alpha = 0
                self.featuresContainer.alpha = 0
                self.photosContainer.alpha = 0
            })
            
        case 1:
            UIView.animate(withDuration: 0.5, animations: {
                self.overviewContainer.alpha = 0
                self.capacityContainer.alpha = 0
                self.caterogyContainer.alpha = 0
                self.featuresContainer.alpha = 1
                self.photosContainer.alpha = 0
            })
            
        case 2:
            UIView.animate(withDuration: 0.5, animations: {
                self.overviewContainer.alpha = 0
                self.capacityContainer.alpha = 1
                self.caterogyContainer.alpha = 0
                self.featuresContainer.alpha = 0
                self.photosContainer.alpha = 0
            })
            
        case 3:
            UIView.animate(withDuration: 0.5, animations: {
                self.overviewContainer.alpha = 0
                self.capacityContainer.alpha = 0
                self.caterogyContainer.alpha = 1
                self.featuresContainer.alpha = 0
                self.photosContainer.alpha = 0
            })
            
        case 4:
            UIView.animate(withDuration: 0.5, animations: {
                self.overviewContainer.alpha = 0
                self.capacityContainer.alpha = 0
                self.caterogyContainer.alpha = 0
                self.featuresContainer.alpha = 0
                self.photosContainer.alpha = 1
            })
        default:
            UIView.animate(withDuration: 0.5, animations: {
                self.overviewContainer.alpha = 1
                self.capacityContainer.alpha = 0
                self.caterogyContainer.alpha = 0
                self.featuresContainer.alpha = 0
                self.photosContainer.alpha = 0
            })
        }
        
        
        
        
    }
    
}
