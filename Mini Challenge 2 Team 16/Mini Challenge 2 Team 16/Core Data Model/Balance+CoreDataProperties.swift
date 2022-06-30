//
//  Balance+CoreDataProperties.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 29/06/22.
//
//

import Foundation
import CoreData


extension Balance {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Balance> {
        return NSFetchRequest<Balance>(entityName: "Balance")
    }

    @NSManaged public var totalMoney: Double
    @NSManaged public var date: Date?
    @NSManaged public var historyBalance: Double
    @NSManaged public var peopleBalance: Person?
    @NSManaged public var history: NSSet?
    @NSManaged public var goalsBalance: NSSet?

}

// MARK: Generated accessors for history
extension Balance {

    @objc(addHistoryObject:)
    @NSManaged public func addToHistory(_ value: HistoryBalance)

    @objc(removeHistoryObject:)
    @NSManaged public func removeFromHistory(_ value: HistoryBalance)

    @objc(addHistory:)
    @NSManaged public func addToHistory(_ values: NSSet)

    @objc(removeHistory:)
    @NSManaged public func removeFromHistory(_ values: NSSet)

}

// MARK: Generated accessors for goalsBalance
extension Balance {

    @objc(addGoalsBalanceObject:)
    @NSManaged public func addToGoalsBalance(_ value: Goals)

    @objc(removeGoalsBalanceObject:)
    @NSManaged public func removeFromGoalsBalance(_ value: Goals)

    @objc(addGoalsBalance:)
    @NSManaged public func addToGoalsBalance(_ values: NSSet)

    @objc(removeGoalsBalance:)
    @NSManaged public func removeFromGoalsBalance(_ values: NSSet)

}

extension Balance : Identifiable {

}
