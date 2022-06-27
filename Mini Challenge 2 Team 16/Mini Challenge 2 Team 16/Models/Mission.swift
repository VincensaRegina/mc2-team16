//
//  Mission.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 27/06/22.
//

import Foundation
import UIKit

struct Mission {
    var name: String
    var icon: UIImage?
    var reward: Float
}

func missionSeeder() -> [Mission] {
    
    return [
        Mission(name: "Join a soccer club", icon: UIImage(named: "stashy"), reward: 5000),
        Mission(name: "Get perfect score on Math", icon: UIImage(named: "onboarding1"), reward: 5000)
        
    ]
}

var missionSeed = missionSeeder()
