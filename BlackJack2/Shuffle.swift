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
        var currCount = UInt(count);

        for i in 0..<currCount - 1 {
            let j = Int(arc4random_uniform(UInt32(currCount - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
