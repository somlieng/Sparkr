//
//  CreatureAddViewController.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 11/28/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class CreatureAddViewController: UIViewController{
    
    var list: Creatures! = Creatures.sharedInstance

    @IBAction func leaveKeyboard(_ sender: UITapGestureRecognizer) {
        self.view.resignFirstResponder()
        characterText.resignFirstResponder()
    }
    
    @IBOutlet var characterText: UITextView!
    
    @IBAction func addCreature(_ sender: UIButton) {
        
        let prompt: String = characterText.text
        list.creatures.append(prompt)
        print(list.creatures)
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

