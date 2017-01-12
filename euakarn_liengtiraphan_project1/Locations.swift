//
//  Locations.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/4/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class Locations: NSObject {
    
    static let sharedInstance = Locations()
    
    var locations: [String] = ["A witch's kitchen",
                               "Black market for cats",
                               "Inside a fire",
                               "A sunny field of daisies",
                               "Human habitat in outerspace",
                               "A forest where the trees look like people",
                               "Bunnytropolis",
                               "Inside a dog's brain",
                               "What does your office space look like?",
                               "A waterfall of something",
                               "A dragon's lair",
                               "Inside a bakery",
                               "Inside Newt Scamander's suitcase",
                               "A map of Hogwarts",
                               "A playground for adults",
                               "Elementary school in a space ship",
                               "A city using only one shape - that isn't a square",
                               "A world with two suns and 4 moons",
                               "The reflection of the house is a castle",
                               "Musical instrument forest",
                               "The inside of a moving van",
                               "Inside a child's mind",
                               "New York City inhabited by monsters",
                               "A world in a lightbulb",
                               "A store that only sells ____",
                               "The grocery store aisle of unusual things",
                               "The artist studio of the future",
                               "Alien-world fauna",
                               "The aftermath of a baking disaster",
                               "A beach with no sand",
                               "The zoo after dark",
                               "A libary after dark",
                               "Doctor's office specializing in broken hearts",
                               "The perfect reading spot",
                               "Toothbrush Town",
                               "A town not made out of buildings",
                               "Where can a rainbow appear?",
                               "Dust bunny City",
                               "A mystical fairy forest",
                               "Prehistoric Pet store",
                               "A collection of shop fronts",
                               "The Night Garden",
                               "Star Street",
                               "A floral shop, a bakery, and a toy shop",
                               "Halloween Town",
                               "A great fair",
                               "A library of potions",
                               "A bathroon full of plants",
                               "An underwater forest",
                               "The ideal bedroom"]
    
    func randomPlace()  -> String? {
        
        let place = locations
        
        let placeNum = arc4random_uniform(UInt32(place.count))
        let placePrompt = place[Int(placeNum)]
        return placePrompt
    }
    
}

