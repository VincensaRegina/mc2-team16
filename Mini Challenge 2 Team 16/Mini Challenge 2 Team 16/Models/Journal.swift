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

//func dateSeeder() {
//    let formatter = DateFormatter()
//    formatter.dateFormat = "dd/MM/yyyy"
//
//    var test = Calendar.numberOfDaysBetween(formatter.date(from: "01/01/2000")!, and: formatter.date(from: "01/01/2022")!)
//
//
//}

func journalSeeder() -> [Journal] {
    // Date Formatter
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    
    return [
        Journal.init(name: "Expense", desc: "Jajan", type: "expense", date: formatter.date(from: "01/06/2022")!, amount: 5000, exp: -5),
        Journal.init(name: "Income", desc: "Uang saku", type: "income", date: formatter.date(from: "01/06/2022")!, amount: 10000, exp: 10),
        Journal.init(name: "Expense", desc: "Beli permen", type: "expense", date: formatter.date(from: "02/06/2022")!, amount: 10000, exp: 10)
        
    ]
}

func dateSeeder() -> [Date] {
    // Date Formatter
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    
    return [
        formatter.date(from: "01/06/2022")!,
        formatter.date(from: "02/06/2022")!
    ]
}



var journalSeed = journalSeeder()
var dateSeed = dateSeeder()


