//
//  LocationAddViewController.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/12/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class LocationAddViewController: UIViewController {

    var list: Locations! = Locations.sharedInstance
    
    @IBAction func leaveKeyboard(_ sender: UITapGestureRecognizer) {
        self.view.resignFirstResponder()
        characterText.resignFirstResponder()
    }
    
    @IBOutlet var characterText: UITextView!
    
    @IBAction func addCreature(_ sender: UIButton) {
        
        let prompt: String = characterText.text
        list.locations.append(prompt)
        print(list.locations)
        print("Saved")
        characterText.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextView) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        
        view.endEditing(true)
        
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
        print("Saved")
        
    }
    
    
    override func viewDidLoad() {
        
        
    }


}
