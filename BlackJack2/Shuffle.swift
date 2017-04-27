//
//  Shuffle.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffleInPlace() {
        // Borrowed from: <https://codedump.io/share/OCJt0TU9IfzE/1/how-do-i-shuffle-an-array-in-swift>
        guard count > 1 else { return }
        let initCount = count as! Int
        let counter = initCount - 1

        for i in 0..<counter - 1 {
            let j = Int(arc4random_uniform(UInt32(counter - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
