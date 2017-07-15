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
    
    @IBAction func playGamePressed(_ sender: Any) {
        dealer = Dealer()
        let winner = playGame()
        winnerLabel.text = winner.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func playGame() -> Player {
        var turn = "player"
        dealer.deal()

        if let _ = dealer.winner {
            dealer.award()
        }

        while dealer.winner == nil {
            let player = turn == "player" ? dealer.house : dealer.player
            dealer.turn(player)
            turn = turn == "player" ? "house" : "player"
        }

        dealer.award()
        return dealer.winner!
    }

}
