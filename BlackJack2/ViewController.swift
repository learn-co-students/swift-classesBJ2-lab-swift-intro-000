//
//  ViewController.swift
//  BlackJack2
//
//  Created by Jim Campagno on 7/20/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dealer: Dealer = Dealer()
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    
    @IBAction func playGamePresses(_ sender: Any) {
        var dealerPressed: Dealer = Dealer()
        dealer = dealerPressed
        var winner = playGame()
        
        winnerLabel.text = winner.name
        
    }
    

    func playGame() -> Player {
        
        var turn = "player"
        dealer.deal()

        if let _ = dealer.winner {
            dealer.award()
        }

        while dealer.winner == nil {
            let player = turn == "player" ? dealer.house : dealer.player
            dealer.turn(player: player)
            turn = turn == "player" ? "house" : "player"
        }

        dealer.award()
        
        print("Player's hand value is : \(dealer.player.handValue)")
        print("House's hand value is : \(dealer.house.handValue)")
        print("The winner is : \(dealer.winner!.name)")
        
        
        return dealer.winner!
    }

}
