//
//  ArtFetcher.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/15/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

enum ArtError: Error {
    case BadURL
    case ImageFetchFailed
}

enum ArtResult {
    case ImageSuccess(UIImage)
    case ImageFailure(Error)
}


class ArtFetcher {

    let session = URLSession(configuration: URLSessionConfiguration.default)
    
    func getImage(url: String, completion: @escaping (ArtResult) -> Void) {
        if let pictureURL = URL(string: url) {
            let request = URLRequest(url: pictureURL)
            
            let task = session.dataTask(with: request) {
                (data, response, error) -> Void in
                
                guard let pictureData = data,
                    let image = UIImage(data: pictureData) else {
                        if data == nil {
                            completion(.ImageFailure(error!))
                        }
                        else {
                            completion(.ImageFailure(ArtError.ImageFetchFailed))
                        }
                        return
                }
                
                completion(.ImageSuccess(image))
            }
            task.resume()
        }
        else {
            completion(.ImageFailure(ArtError.BadURL))
        }
    }
    
}
