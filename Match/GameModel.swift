//
//  GameModel.swift
//  Match
//
//  Created by Trieu Nguyen on 8/3/15.
//  Copyright (c) 2015 Trieu Nguyen. All rights reserved.
//

import UIKit

class GameModel: NSObject {
    
    func getCards() -> [Card] {
    
        var generatedCards:[Card] = [Card]()
    
        //  Generate some card objects
        for index in 0...7 {
            
            //  Generate a random number
            var randNumber:Int = Int(arc4random_uniform(13))
            
            //  Create a new card object
            var firstCard:Card = Card()
            firstCard.cardValue = randNumber

            //  Create second card object, first card's pair
            var secondCard:Card = Card()
            secondCard.cardValue = randNumber
            
            //  Place card objects into the array
            generatedCards += [firstCard, secondCard]
        }
        
        //  Randomize the cards even more 
        for index in 0...generatedCards.count-1 {
            
            //  Current card
            var currentCard:Card = generatedCards[index]
            
            //  Randomly choose another index
            var randomIndex:Int = Int(arc4random_uniform(16))
            
            //  Swap objects at the two indexes
            
            generatedCards[index] = generatedCards[randomIndex]
            generatedCards[randomIndex] = currentCard   
            
//            println(String(format: "swapping card %d with card %d", index, randomIndex))
        }
    
        return generatedCards
    
    }
   
}
