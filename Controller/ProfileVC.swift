//
//  ProfileVC.swift
//  events
//
//  Created by William Musumba on 02/01/2018.
//  Copyright © 2018 William Musumba. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class ProfileVC: UIViewController {

    //variables
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var eventTypeLbl: UILabel!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var venueImg: UIImageView!
    @IBOutlet weak var eventNameLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var profileBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser?.uid == nil {
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getUserInfo()
        getVenueInfo()
    }

    @objc func handleLogout(){
        do {
            try Auth.auth().signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: \(signOutError)")
        }
        
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    //sign out button
    @IBAction func signOutBtnPressed(_ sender: Any) {
        handleLogout()
    }
    
    //get user data and shows name and user type
    func getUserInfo(){
        if Auth.auth().currentUser?.uid == nil {
            //unsucessful or the user does not have any data
            print("APP VENUE PROFILE: user information has no information to add to interface")
        } else {
            //successfully get data
            let uid = Auth.auth().currentUser?.uid
            DataService.instance.REF_USERS_INFO.child(uid!).observeSingleEvent(of: .value, with: { (snapshot) in
                if let dict = snapshot.value as? [String: AnyObject]{
                    //sets data to outlets
                    self.nameLbl.text = dict["first name"] as? String
                    self.eventTypeLbl.text = dict["user type"] as? String
                    print("APP VENUE PROFILE: user information has been added to interface")
                }
                
            })
        }
    }
    
    //get venue data
    func getVenueInfo(){
        if Auth.auth().currentUser?.uid == nil {
            //unsuccessful or the user does not have a venue
            print("APP VENUE PROFILE: user does not have avenue to add")
        } else {
            //successful get venue info to display
            print("APP VENUE PROFILE: venue information has been added")
            let uid = Auth.auth().currentUser?.uid
            DataService.instance.REF_VENUE.child(uid!).observeSingleEvent(of: .value, with: { (snapshot) in
                if let dict = snapshot.value as? [String: AnyObject] {
                    //set data to outlets
                    let vName =  dict["venue name"] as? String
                    self.eventNameLbl.text = vName?.capitalized
                    self.descLbl.text = dict["description"] as? String
                    let img = dict["imageURL 1"] as? String
                    self.getImage(img!, self.venueImg)
                    self.profileBtn.isHidden = true
                }
            })
            
            
        
        }
    }
    
    //allows the imageo accept a url 
    func getImage(_ url:String, _ img:UIImageView){
        let url:URL = URL(string: url)!
        let session = URLSession.shared
        
        let task = session.dataTask(with: url, completionHandler: {
            (data, response, error) in
            if data != nil {
                let image = UIImage(data: data!)
                if(image != nil) {
                    DispatchQueue.main.async(execute: {
                        img.image = image
                    })
                }
            }
        })
        task.resume()
    }
    
    //add venue button
    @IBAction func addProfileBtnPressed(_ sender: Any) {
        let addVenue = storyboard?.instantiateViewController(withIdentifier: "AddVenueVC")
        present(addVenue!, animated: true, completion: nil)
    }
    
}
