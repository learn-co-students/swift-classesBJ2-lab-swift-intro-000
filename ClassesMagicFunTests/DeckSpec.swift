//
//  DeckSpec.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import ClassesMagicFun

class DeckSpec: QuickSpec {
    override func spec() {
        describe("Deck") {
            let deck = Deck()

            beforeEach {
                deck.shuffle()
            }

            describe("initializer") {
                it("should allow a card to be drawn") {
                    expect(deck.drawCard()).to(beTruthy())
                }
            }

            describe("drawCard") {
                it("should allow up to 52 cards to be drawn") {
                    for i in 0..<51 {
                        expect(deck.drawCard()).to(beTruthy(), description: "\(i)")
                    }
                    expect(deck.drawCard()).to(beNil())
                }
            }
        }
    }
}
