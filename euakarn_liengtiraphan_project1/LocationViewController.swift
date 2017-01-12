//
//  LocationViewController.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/12/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController{

    @IBOutlet var LocationPrompt: UILabel!
    var location: Locations! = Locations.sharedInstance
    
    @IBAction func nextPrompt(_ sender: UITapGestureRecognizer) {
        
        LocationPrompt.text = location.randomPlace()
        
        if((LocationPrompt.text?.characters.count)! > 120){
            LocationPrompt.font = UIFont(name: whatFont(), size: 18)
        }
            
        else if((LocationPrompt.text?.characters.count)! > 100){
            LocationPrompt.font = UIFont(name: whatFont(), size: 24)
        }
            
        else if((LocationPrompt.text?.characters.count)! > 80){
            LocationPrompt.font = UIFont(name: whatFont(), size: 36)
        }
        
        LocationPrompt.font = UIFont(name: whatFont(), size: 48)
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
        
        for element in location.locations {
            print(element)
        }
        
        
    }


}
