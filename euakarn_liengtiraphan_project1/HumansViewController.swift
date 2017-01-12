//
//  Characters.swift
//  euakarn_liengtiraphan_project1
//
//  Created by Som on 11/4/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class HumansViewController: UIViewController
{
    
    var human: Humans! = Humans.sharedInstance
    
    @IBOutlet var characterPrompt: UILabel!
    
       
    @IBAction func nextPrompt(_ sender: Any) {
        
         characterPrompt.text = human.randomHumans()
        
        if((characterPrompt.text?.characters.count)! > 120){
            characterPrompt.font = UIFont(name: whatFont(), size: 18)
        }
            
        else if((characterPrompt.text?.characters.count)! > 100){
            characterPrompt.font = UIFont(name: whatFont(), size: 24)
        }
            
        else if((characterPrompt.text?.characters.count)! > 80){
            characterPrompt.font = UIFont(name: whatFont(), size: 36)
        }
        
        characterPrompt.font = UIFont(name: whatFont(), size: 48)
        
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
        
        for element in human.humans {
            print(element)
        }
        
        
    }
    
    
}

