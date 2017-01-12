//
//  SecondViewController.swift
//  euakarn_liengtiraphan_project1
//
//  Created by Som on 11/1/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class CreaturesViewController: UIViewController{
    
    var creature: Creatures! = Creatures.sharedInstance
    

    @IBOutlet var creaturePrompt: UILabel!
    
    @IBAction func newPrompt(_ sender: UITapGestureRecognizer) {
        
        creaturePrompt.text = creature.randomCreature()
        
        if((creaturePrompt.text?.characters.count)! > 120){
            creaturePrompt.font = UIFont(name: whatFont(), size: 18)
        }
            
        else if((creaturePrompt.text?.characters.count)! > 100){
            creaturePrompt.font = UIFont(name: whatFont(), size: 24)
        }
            
        else if((creaturePrompt.text?.characters.count)! > 80){
            creaturePrompt.font = UIFont(name: whatFont(), size: 36)
        }
        
        creaturePrompt.font = UIFont(name: whatFont(), size: 48)
        
    }
    
    
    func whatFont() -> String{
        let fonts: [String] = [
                                    "AvenirNext-Bold",
                                    "Futura-Bold"
                                ]
        
        let what = arc4random_uniform(UInt32(fonts.count))
        let thisFont = fonts[Int(what)]
        return thisFont
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }
    

}

