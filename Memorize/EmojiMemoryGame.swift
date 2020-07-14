//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lawrence Dizon on 7/14/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import SwiftUI



class EmojiMemoryGame {
    
    //ViewModel is the doorway between the View and the Model
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex  in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: -Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
        
    }
    
}
