//
//  Objects.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/4/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class Objects: NSObject {
    
    static let sharedInstance = Objects()
    
    var objects: [String] = ["What are your daily essentials?",
                             "What is your creativity kit?",
                             "Unusual smoothies",
                             "Broken furniture made new",
                             "A bottle of starlight",
                             "Make a potion",
                             "Rainbow making machine",
                             "Canimals",
                             "Illustrate enough puns to make your dad groan",
                             "Illustrate a mundane process",
                             "What if your kitchen can talk to you?",
                             "Rock, Paper, Scissors!",
                             "Objects dreaming of advancement in life",
                             "Objects in love",
                             "A suitcase full of _____",
                             "Evil legos",
                             "A record player playing the solar system",
                             "Sunset collection",
                             "Cacti in clothing",
                             "Pickled vegetables",
                             "What do feelings look like?",
                             "Intergalatic Survival Guide",
                             "Fancy buildings",
                             "Trees made of shapes",
                             "A house in a terrarium",
                             "Gnome's house",
                             "Fairy house",
                             "A collection of leaves from the forest",
                             "Redesign the cover for your favorite book",
                             "A family heirloom",
                             "Kitchen Creatures",
                             "A bouquet of flowers",
                             "Things I will pack for the holidays",
                             "Wands",
                             "Tiles from around the world",
                             "Snowglobes of fantastic places",
                             "Grandma's kitchen supplies",
                             "The house of the future",
                             "101 uses of a paperclip",
                             "The watches of the wizarding world",
                             "Animals from household objects",
                             "Shoes design for outerspace",
                             "Elementary school supplies in space",
                             "Collars",
                             "Fun Mugs",
                             "Apps of the future",
                             "Creative anchors",
                             "A well loved pen",
                             "A stack of books",
                             "Multiple potions, smoking with wispy swirls",
                             "A recipe with a significant mistake",
                             "Things I need from the grocery store",
                             "A non-typical vending machines",
                             "A cup of delicious hot chocolate",
                             "An old ragged teddy bear",
                             "A fancy muffin.",
                             "A collection of shoes",
                             "A dress made of flowers",
                             "All the books on the bookshelf",
                             "Origami cranes",
                             "A plate of freshly baked cookies",
                             "Anatomy of a fancy cake",
                             "Mushrooms and all types",
                             "A newest boardgame in town",
                             "A dozen tea cups, none of them matching",
                             "A map of a fantasy world",
                             "A baby's mobile",
                             "The bicycle sneezed",
                             "A ballerina’s lunch",
                             "A cup of coffee harassing a seed",
                             "A lazy Sunday morning breakfast",
                             "Quirky Christmas ornaments",
                             "Gumball machine for planets"]
    
    func randomObject()  -> String? {
        
        let place = objects
        
        let placeNum = arc4random_uniform(UInt32(place.count))
        let placePrompt = place[Int(placeNum)]
        return placePrompt
    }
    
}
