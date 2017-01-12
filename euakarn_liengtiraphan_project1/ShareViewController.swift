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
    
    let loginButton: FBSDKLoginButton! = FBSDKLoginButton()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (FBSDKAccessToken.current != nil) {
            // User is logged in, do work such as go to next view controller.
        }
    }
    override func viewDidLoad() {
        loginButton.center = self.view.center
        self.view.addSubview(loginButton)
    }
    
    @IBAction func openCameraRoll() {
        let picker: UIImagePickerController = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let chosenImage = info[UIImagePickerControllerEditedImage] as! UIImage
        showShareDialog(image: chosenImage)
    }
    
    func showShareDialog(image: UIImage) {
        let dialog = FBSDKShareDialog()
        dialog.mode = .native
        let photo = FBSDKSharePhoto()
        photo.image = image
        photo.isUserGenerated = true
        let content = FBSDKSharePhotoContent()
        content.photos = [photo]
        dialog.shareContent = content
        //dialog.delegate = self
        dialog.fromViewController = self
        dialog.show()
    }


}
