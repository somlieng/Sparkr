//
//  Situations.swift
//  euakarn_liengtiraphan_project2
//
//  Created by Som on 12/4/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class Situations: NSObject {
    
    static let sharedInstance = Situations()
    
    var situations: [String] = ["Coffee Club",
                                "Hugs keeps you alive",
                                "Icecream Dates",
                                "Bear Hugs",
                                "I love you to the moon and back",
                                "I want you bedly",
                                "Love yourself",
                                "Going over the rainbow",
                                "Shooting for the stars",
                                "Fishing in a fish",
                                "What did I eat today?",
                                "Taking a bath in _____",
                                "There are cats on my head",
                                "Mama, I want preztels!",
                                "The Flash getting ticketed for going too fast",
                                "Batman saving cats",
                                "We have a universe inside our heads",
                                "Feelings are back",
                                "Impress me, Human",
                                "A great wave of bunnies",
                                "Being negative only makes a difficult journey more difficult. You may be given a cactus, but you don't have to sit on it",
                                "You can see me?",
                                " Grab your favorite novel and randomly open it to any page. Read the first paragraph on that page and illustrate it.",
                                "Fill a blank page with shapes. Paint or color them in.",
                                "Behind every great man is a woman rolling her eyes",
                                "A party in the graveyard",
                                "His irrational fear proves to be completely rational",
                                "Comic-con chaos",
                                "A man committing a crime finds evidence of an even bigger crime",
                                "The planet is fine. The people are fucked",
                                "Accept who you are. Unless you're a serial killer.",
                                "Three different kisses, each with different motivations and meanings.",
                                "Trying on makeup for the first time",
                                "When life gives you lemons, squirt someone in the eye.",
                                "A lie gets halfway around the world before the truth has a chance to get its pants on.",
                                "He rode the beast into the night.",
                                "The two girls embraced, eyes closed.",
                                "A couple holding hands in the rain",
                                "Red Riding Hood vs. The Big Bad Wolf",
                                "Ugh, I’m too short to reach!",
                                "A small butterfly landed on her nose",
                                "They didn't know which way to hug",
                                "Standing in front of the shimmering portal, ready to jump in.",
                                "He curled the blanket tighter around his shoulders. It was too cold to wake up just yet.",
                                "When you wave to someone you don’t know and then try to play it cool.",
                                "When you start laughing really hard and no one else is amused.",
                                "When your stomach starts to make noises in the middle of an otherwise quiet room.",
                                "Falling asleep in an inappropriate place.",
                                "Leaving the bathroom with toilet paper on your butt or shoe or really, any part of your person.",
                                "Bad breath",
                                "Tripping and then playing it cool",
                                "Falling in holes.",
                                "A child making fun of you.",
                                "Saying bye to someone and realizing you’re going in the same direction.",
                                "A woman just realizing that she was bitten by a zombie, and is in the process of becoming one",
                                "Getting into a crowded elevator, facing the opposite direction of everyone else, and not being able to turn around.",
                                "Getting stuck in anything but especially things meant for children.",
                                "Realizing you are in the wrong class.",
                                "Best Prank",
                                "The adoption agency was not what it seemed.",
                                "If only she hadn't stepped into that elevator with him",
                                "A hitchhiker with a bad allergy",
                                "A secret kiss by the kitchen fire",
                                "A child develops a wild plan to keep his parents from getting divorced",
                                "They poked holes in the tub and walk it done the road",
                                "Frozen by fear",
                                "An amateur naturalist whose dream is to discover a new type of animal",
                                "A character with no living grandparents, who wants to adopt a grandmother.",
                                "She sat under the sheltering tree, holding her knees and watching the rain.",
                                "Fancy Parties",
                                "“Mommy? Have you ever seen a human?” “Of course not, they’ve been extinct for 2000 years”",
                                "Dammit. Warn a guy before you do a face-plant on the floor next time.",
                                "A man in court is accused of witchcraft. It is 2014.",
                                "The summer of 1964",
                                "Don't gobblefunk around with words",
                                "Ways to Say I love you",
                                "An unsuccessful wedding proposal",
                                "The more you weight, the harder it is to kipnap you. Eat cake, stay safe"]
    
    func randomSituation()  -> String? {
        
        let place = situations
        
        let placeNum = arc4random_uniform(UInt32(place.count))
        let placePrompt = place[Int(placeNum)]
        return placePrompt
    }
    
}
