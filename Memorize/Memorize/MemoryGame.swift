//
//  MemoryGame.swift
//  Memorize
//
//  Created by Lawrence Dizon on 7/14/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
            
        }
    }
    
    func choose(card: Card) {
        print("card chose: \(card)")
    }
    
    struct Card: Identifiable{
        var isFaceUp = true
        var isMatched = false
        var content: CardContent
        var id: Int
        
    }
}
