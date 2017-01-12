//
//  ImageSaver.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 11/28/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class ImageSaver: NSObject {
    class func saveImage(_ image: UIImage, forUID uid: String) {
        let imageURL = ImageSaver.imageURLForUID(uid)
        if let data = UIImageJPEGRepresentation(image, 0.5) {
            do {
                try data.write(to: imageURL, options: .atomic)
            }
            catch {
                print("could not save \(uid)")
            }
        }
    }
    
    class func getImage(forUID uid: String) -> UIImage? {
        let imageURL = ImageSaver.imageURLForUID(uid)
        guard let imageFromDisk = UIImage(contentsOfFile: imageURL.path) else {
            return nil
        }
        
        return imageFromDisk
    }
    
    class func imageURLForUID(_ key: String) -> URL {
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent(key)
    }
}
