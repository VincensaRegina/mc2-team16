//
//  Journal.swift
//  Mini Challenge 2 Team 16
//
//  Created by Vincensa Regina on 22/06/22.
//

import Foundation


class Journal {
    var name: String
    var desc: String
    var type: String
    var date: Date
    var amount: Float
    var exp: Int
    
    init(name: String, desc: String, type: String, date: Date, amount: Float, exp: Int) {
        self.name = name
        self.desc = desc
        self.type = type
        self.date = date
        self.amount = amount
        self.exp = exp
    }
}

extension Calendar {
    func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        
        return numberOfDays.day! + 1 // <1>
    }
}

func dateSeeder() {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
//
//    var test = Calendar.numberOfDaysBetween(formatter.date(from: "01/01/2000")!, and: formatter.date(from: "01/01/2022")!)
    
    
}


