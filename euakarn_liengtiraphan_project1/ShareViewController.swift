//
//  ShareViewController.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/12/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKShareKit

class ShareViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
//      override func viewDidLoad() {
//        loginButton.center = self.view.center
//        self.view.addSubview(loginButton)
//    }
    
    @IBAction func openCameraRoll() {
        let picker: UIImagePickerController = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        let chosenImage = info[UIImagePickerControllerEditedImage] as! UIImage
//        showShareDialog(image: chosenImage)
//    }
    
   
}
