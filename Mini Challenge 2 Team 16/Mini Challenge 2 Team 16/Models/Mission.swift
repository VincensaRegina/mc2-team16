//
//  Mission.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 27/06/22.
//

import Foundation
import UIKit

struct MissionWinnow {
    var name: String
    var icon: UIImage?
    var reward: Float
}

func missionSeeder() -> [MissionWinnow] {
    
    return [
        MissionWinnow(name: "Join a soccer club", icon: UIImage(named: "stashy"), reward: 5000),
        MissionWinnow(name: "Get perfect score on Math", icon: UIImage(named: "onboarding1"), reward: 5000)
        
    ]
}

var missionSeed = missionSeeder()
