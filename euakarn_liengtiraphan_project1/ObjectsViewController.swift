//
//  ObjectsViewController.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/12/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class ObjectsViewController: UIViewController{
    
    @IBOutlet var objectsPrompt: UILabel!
    var objects: Objects! = Objects.sharedInstance
    
    @IBAction func nextPrompt(_ sender: UITapGestureRecognizer) {
        
        objectsPrompt.text = objects.randomObject()
        
        if((objectsPrompt.text?.characters.count)! > 120){
            objectsPrompt.font = UIFont(name: whatFont(), size: 18)
        }
            
        else if((objectsPrompt.text?.characters.count)! > 100){
            objectsPrompt.font = UIFont(name: whatFont(), size: 24)
        }
            
        else if((objectsPrompt.text?.characters.count)! > 80){
            objectsPrompt.font = UIFont(name: whatFont(), size: 36)
        }

        
        objectsPrompt.font = UIFont(name: whatFont(), size: 48)
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
        
        for element in objects.objects {
            print(element)
        }
        
        
    }

    
    
}
