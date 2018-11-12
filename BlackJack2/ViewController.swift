//
//  ViewController.swift
//  BlackJack2
//
//  Created by Jim Campagno on 7/20/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var winnerLabel: UILabel!
    
    var dealer = Dealer()

    func playGame() -> Player {
        var turn = "player"
        dealer.deal()

        if let _ = dealer.winner {
            dealer.award()
        }

        while dealer.winner == nil {
            let player = turn == "player" ? dealer.house : dealer.player
            dealer.turn(player:  player)
            turn = turn == "player" ? "house" : "player"
        }

        dealer.award()
        
        print("Player's hand value is : \(dealer.player.handValue)")
        print("House's hand value is : \(dealer.house.handValue)")
        print("The winner is : \(dealer.winner!.name)")
        
        return dealer.winner!
    }

    @IBAction func playGamePressed(_ sender: UIButton) {
        let dealerPressed = Dealer()
        dealer = dealerPressed
        let winner = playGame()
        
        winnerLabel.text = winner.name
    }
}
