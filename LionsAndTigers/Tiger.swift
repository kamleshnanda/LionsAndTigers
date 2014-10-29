//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Kamlesh Nanda on 10/8/14.
//  Copyright (c) 2014 Kamlesh Nanda. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; chuff++ {
            self.chuff()
        }
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if(isLoud) {
                chuff()
            } else {
                println("Tiger: purr purr")
            }
        }
    }
    
    func ageInTigerYearsFromAge (regularAge: Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
        
        if(randomNumber == 0) {
            randomFact = "The Tiger is the biggest species in the Cat family"
        } else if(randomNumber == 1) {
            randomFact = "Tigers can reach a length of 3.3 meters"
        } else {
            randomFact = "Group of Tigers is known as 'ambush' or 'streak'"
        }
        
        return randomFact
    }
}
