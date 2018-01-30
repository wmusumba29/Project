//
//  FearturesVC.swift
//  events
//
//  Created by William Musumba on 12/01/2018.
//  Copyright © 2018 William Musumba. All rights reserved.
//

import UIKit

class FearturesVC: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{
    
    //variables
    @IBOutlet weak var feature1Field: UITextField!
    @IBOutlet weak var feature2Field: UITextField!
    @IBOutlet weak var feature3Field: UITextField!
    @IBOutlet weak var feature4Field: UITextField!
    @IBOutlet weak var feature5Field: UITextField!
    @IBOutlet weak var feature6Field: UITextField!
    @IBOutlet weak var feature7Field: UITextField!
    @IBOutlet weak var feature8Field: UITextField!
    @IBOutlet weak var feature9Field: UITextField!
    @IBOutlet weak var feature10Field: UITextField!
    
    @IBOutlet weak var featureTableview: UITableView!
    
    let features = ["Disabled Access","Reception","Late Access","Early Access","Smoking Area","Toliet","Elevator","Cloakroom","Stationary","Wifi","Speakers","Monitors","Air Condition","Late Alcohol License","Alcohol License","Bring Your Own License","Parking","Kitchen"]
    var selectedFeature: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //featureTableview.delegate = self
        //featureTableview.dataSource = self
        //self.featureTableview.allowsMultipleSelection = true
    }
    
    //UIPickerview for the user Type
    func createEventType(){
        let featurePicker = UIPickerView()
        featurePicker.delegate = self
        
        feature1Field.inputView = featurePicker
        feature2Field.inputView = featurePicker
        feature3Field.inputView = featurePicker
        feature4Field.inputView = featurePicker
        feature5Field.inputView = featurePicker
        feature6Field.inputView = featurePicker
        feature7Field.inputView = featurePicker
        feature8Field.inputView = featurePicker
        feature9Field.inputView = featurePicker
        feature10Field.inputView = featurePicker
    }
    
    //toolbar for UIPickerview
    func createToolBar(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.dismissKeyboard))
        
        toolBar.setItems([doneBtn], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        eventTypeField.inputAccessoryView = toolBar
    }
    
    //keyboard
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    /*
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getFeature().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell") as? FeatureCell {
            let feature = DataService.instance.getFeature()[indexPath.row]
            cell.updateView(Feature: feature)
            //cell.featureLbl.text
            return cell
        } else {
            return FeatureCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        }
    }
    
    */
    
    

    @IBAction func nextBtnPressed(_ sender: Any) {
    }
    
}
