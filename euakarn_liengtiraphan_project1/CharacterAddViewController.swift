//
//  CharacterAdd.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 11/27/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class CharacterAddViewController: UIViewController{
    
    var list: Humans! = Humans.sharedInstance
    
    
    @IBAction func leaveKeyboard(_ sender: Any) {
        self.view.resignFirstResponder()
        characterText.resignFirstResponder()
    }
    
    @IBOutlet var characterText: UITextView!
    
    @IBAction func addCharacter(_ sender: UIButton) {
        
        let prompt: String = characterText.text
        list.humans.append(prompt)
        print(list.humans)
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
        
       
             
        
    }
    
    override func viewDidLoad() {
        
        
        
    }


    

}
