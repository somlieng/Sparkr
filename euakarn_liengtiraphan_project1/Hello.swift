//
//  FirstViewController.swift
//  euakarn_liengtiraphan_project1
//
//  Created by Som on 11/1/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class Hello: UIViewController {

    
    @IBOutlet var instructions: UILabel!
    @IBOutlet var pencilslidedown: NSLayoutConstraint!
    @IBOutlet var fade: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instructions.alpha = 0
        instructions.font = UIFont(name: "AvenirNext-Bold", size: 24)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateConstraint() {
        let height = view.frame.height
        self.pencilslidedown.constant -= height
        
        let mover = { () -> Void in
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(
            withDuration: 2.0,
            delay: 0,
            options: [.curveLinear],
            animations: mover)
        
    }
    
    func animateAlpha() {
        UIView.animate(
            withDuration: 2,
            delay: 0,
            options: [],
            animations: { () -> Void in
                self.fade.alpha = 0
        }
                    )
    }
    
    func fadeIn() {
        UIView.animate(
            withDuration: 2,
            delay: 1,
            options: [],
            animations: { () -> Void in
                self.instructions.alpha = 1
        }
        )
    }
    
    func animateColor() {
        UIView.animate(
            withDuration: 2.0,
            delay: 1.0,
            options: [],
            animations: { () -> Void in
                self.view.backgroundColor = UIColor(red: CGFloat(103.0/255.0), green: CGFloat(103.0/255.0), blue: CGFloat(103.0/255.0), alpha: CGFloat(1.0))
        }
        )
    }

    
    @IBAction func constraint(_ sender: UIButton) {
        animateAlpha()
        animateConstraint()
        animateColor()
        fadeIn()
    }

}

