//
//  Humans.swift
//  euakarn_liengtiraphan_project1
//
//  Created by Som on 11/5/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class Humans: NSObject {
    
    static let sharedInstance = Humans()
    
    var humans: [String] = ["An old assassin that just wouldn't retire",
                            "The weird neighbors don’t have shadows",
                            "Portrait of a woman in a space helmet",
                            "Badass biker chick",
                            "Gentle-looking girl with an ornate flower in her fair hair",
                            "The world’s worst super hero team",
                            "The goddess of magma",
                            "A man in a walking down a dark street in trench coat",
                            "A personification of the Moon and the Stars as man and woman",
                            "Children measuring each other's heights",
                            "A striped person",
                            "A person in clothing drawn without clothing",
                            "Woah, they have great fashion sense!",
                            "Planet Head People",
                            "Flower people",
                            "The Girl with flames in her eyes",
                            "He is the last of his kind",
                            "Being parents, it was a constant struggle to hide their superhero identities from their children",
                            "He couldn’t help staring at the kissable nape of her neck",
                            "Knight in spotlessly shining armor",
                            "Boy scouts telling stories around a campfire",
                            "A petite little girl wielding a knife",
                            "Victorian-era werewolf hunter",
                            "An exhausted preschool teacher",
                            "A woman in a simple white dress with long wavy hair that cascades down her shoulders. She wears a circlet made from pink flowers",
                            "The girl snuggled in her coat in the cold",
                            "A shy man with butterfly wings",
                            "Who would have guessed that this unlikely character was a dragon slayer?",
                            "Dragon Trainer",
                            "Pirates studying economics",
                            "Vampires buying sunscreen",
                            "Werewolves buying puppy food their their kids",
                            "A couple having a lovely night in",
                            "Plant people and flower children",
                            "A person and their imaginary friend",
                            "A fashion show with just fancy collars",
                            "Female astronauts changing the history of mankind",
                            "Astronaut cleaning the garbage of the universe",
                            "A collection of people using only 4 colors",
                            "A young boy with a secret",
                            "A witch without a broom",
                            "A witch making tea",
                            "A genius toddler",
                            "Jack Frost",
                            "Goldilocks and The Three Penguins",
                            "Marie Antoinette drunk",
                            "Snow White’s new dwarves (Hypochondriac?  Brainless?)",
                            "William Shakespeare in the circus",
                            "Lumberjack in a leotard",
                            "Little girl with a pet monster",
                            "Frankensein and Bride of Frankenstein in couples counseling",
                            "Frankenstein reading a self help book",
                            "A girl with a jetpack",
                            "The man knocked on the door with flowers",
                            "Two stars lecturing their children",
                            "The boy had an avocado for a head",
                            "He looked at his phone, hoping she will understand",
                            "He watched her sleep",
                            "She wanted him to have her heart",
                            "She tried to knit and failed",
                            "She tried to cook but it ____",
                            "The rain monster didn't understand why no one wanted to play with him",
                            "The mermaid drank away her sorrows",
                            "Milkmaid and the Sheepherder romance",
                            "A loose cannon librarian is pursuing the worst borrowed book offenders of the city.",
                            "A woman with long, blonde hair has daisies tucked in her hair",
                            "A women in a beautiful kimono",
                            "Make a list of names A-Z and illustrate",
                            "A nervous groomsman",
                            "His crown was fashioned into elegant antlers atop his head",
                            "Little red riding hood and the wolf having a nice picnic",
                            "People at the beach",
                            "The girl with the most amazing jacket",
                            "Shape People",
                            "An artist in her creative space",
                            "A lemon farmer",
                            "A beautiful family",
                            "The boy wanted to tell her his feelings, but found himself stuttering",
                            "An exhausted deity"]
    
    func randomHumans()  -> String? {
        
        let person = humans
        
        let personNum = arc4random_uniform(UInt32(person.count))
        let personPrompt = person[Int(personNum)]
        return personPrompt
    }
        
}

