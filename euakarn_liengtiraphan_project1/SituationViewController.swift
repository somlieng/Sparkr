//
//  SituationViewController.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/12/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class SituationViewController: UIViewController{
    
    @IBOutlet var situationPrompt: UILabel!
    var situations: Situations! = Situations.sharedInstance
    
    @IBAction func nextPrompt(_ sender: UITapGestureRecognizer) {
        
        situationPrompt.text = situations.randomSituation()
        
        if((situationPrompt.text?.characters.count)! > 120){
            situationPrompt.font = UIFont(name: whatFont(), size: 18)
        }
        
        else if((situationPrompt.text?.characters.count)! > 100){
            situationPrompt.font = UIFont(name: whatFont(), size: 24)
        }
        
        else if((situationPrompt.text?.characters.count)! > 80){
            situationPrompt.font = UIFont(name: whatFont(), size: 36)
        }
        
        else {situationPrompt.font = UIFont(name: whatFont(), size: 48)}
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
        
        for element in situations.situations {
            print(element)
        }
        
        
    }

    
}
