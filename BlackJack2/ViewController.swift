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
    
    @IBAction func button(sender: UIButton) {
        
        playGame()
        
    }
    
    
    var dealer = Dealer()
    
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
        winnerLabel.text = ("\(dealer.winner!.name)")
        return dealer.winner!
    }

}
