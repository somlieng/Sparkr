//
//  Creatures.swift
//  euakarn_liengtiraphan_project1
//
//  Created by Som on 11/5/16.
//  Copyright © 2016 Som. All rights reserved.
//

import UIKit

class Creatures: NSObject {
    
    static let sharedInstance = Creatures()
    
    var creatures: [String] = ["Bulldogs having a tea party",
                               "No drama llamas",
                               "Centaurs skateboarding",
                               "Mermaid seeing stars for the first time",
                               "Unicorns playing an orchestra",
                               "A large, intimidating monster picking flowers",
                               "A large bear wearing high heels",
                               "Fairies throwing a rager in a garden",
                               "Hound of hell",
                               "Aliens taking a roadtrip through the universe",
                               "This is Sir Pawterson, Professor of Canine Philosophy",
                               "Cats scuba diving",
                               "Dinosaurs having a barbecue",
                               "Dragons being read a bedtime story",
                               "A bad tempered yak",
                               "Watermelon whales, Apple Armadillo, Fruit animals!",
                               "Personify the planets",
                               "Falalalalalalalallama",
                               "An elephant on a bicycle",
                               "The sun brushing its hair",
                               "Zoo animals in a library",
                               "Dinosaurs hugging",
                               "Icecream cats",
                               "Tattooed animals",
                               "Animals taking a selfy",
                               "Zoo animals doing yoga",
                               "Wearwolves, they wear fashion",
                               "Kimono dragon",
                               "The monsters under my bed",
                               "Llama and alpaca fashion show",
                               "A tsunami of bunnies",
                               "Hedgehogs with flowers as pricks",
                               "Tattooed Bear",
                               "A lonely ghost",
                               "Animals made up of only lines and squiggles",
                               "A two-headed dragon reading a book",
                               "Small animals living in a terrarium",
                               "A classroom full of sloths",
                               "A troll made from stone and moss",
                               "A friendly monster wearing a scarf and a pair of vans",
                               "Reindeer calf learning to fly",
                               "A cat in a box",
                               "A dragon with an unusual hoard",
                               "Octopus with a cold",
                               "Bigfoot loves prom",
                               "A sea nymph wearing a headdress made of shells, seaweed, and octopus tentacles",
                               "The creature has lived in the library for centuries",
                               "A forest spirit",
                               "Baby werewolf’s first transformation",
                               "Porcucine trying to make smores",
                               "A fat koala",
                               "A giraffe taking a bubble bath",
                               "Food with a face",
                               "That's Jeff. He's the monster that lives in our fridge",
                               "ABC Animals",
                               "Cupcake animals",
                               "Animal butts",
                               "Made of mist, it wove between the trees.",
                               "Noah’s Arc Rejects",
                               "An illustation of the fantastic beasts from Fantastic Beasts and Where to Find Them",
                               "A fox wearing glasses",
                               "A demon singing in the church choir",
                               "Owlbear",
                               "Reverse werewolves"]
    
    func randomCreature()  -> String? {
        
        let  animal = creatures
       
        let animalNum = arc4random_uniform(UInt32(animal.count))
        let animalPrompt = animal[Int(animalNum)]
        return animalPrompt
    }


}

