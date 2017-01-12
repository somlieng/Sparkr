//
//  ArtViewController.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/15/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class ArtViewController: UIViewController{

    @IBOutlet var urlField: UITextField!
    
    @IBOutlet var imageView: UIImageView!
    var imageFetcher: ArtFetcher!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.masksToBounds = true
        
        imageFetcher = ArtFetcher()
    }
    
    
    @IBAction func fetchImage(_ sender: UIButton) {
        let url = urlField.text!
        
        imageFetcher.getImage(url: url) {
            (fetchResult) -> Void in
            
            switch(fetchResult) {
            case let .ImageSuccess(image):
                OperationQueue.main.addOperation() {
                    self.imageView.image = image
                }
            case let .ImageFailure(error):
                
                print("error: \(error)")
            }
            
        }
    }
    @IBAction func leaveKeyboard(_ sender: Any) {
   
        urlField.resignFirstResponder()
        self.view.resignFirstResponder()
    }
    
}
