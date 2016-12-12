//
//  House.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class House: Player {
    init(){
        super.init(name: "House")
        //self.wallet = 124
        }
    
        
    override func willHit(_:(UInt))->Bool{
        var ans: Bool = false

        if UInt(self.handValue) < 17{
            ans = true
            return ans
        } else if (UInt(self.handValue) > 17){
            ans = false
        }
        return ans
}

}
