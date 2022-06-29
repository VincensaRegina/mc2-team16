//
//  Level+CoreDataProperties.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 29/06/22.
//
//

import Foundation
import CoreData


extension Level {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Level> {
        return NSFetchRequest<Level>(entityName: "Level")
    }

    @NSManaged public var progressBarLevel: Double
    @NSManaged public var historyLevel: HistoryBalance?
    @NSManaged public var peopleLevel: Person?
    @NSManaged public var levelGoals: NSSet?

}

// MARK: Generated accessors for levelGoals
extension Level {

    @objc(addLevelGoalsObject:)
    @NSManaged public func addToLevelGoals(_ value: Goals)

    @objc(removeLevelGoalsObject:)
    @NSManaged public func removeFromLevelGoals(_ value: Goals)

    @objc(addLevelGoals:)
    @NSManaged public func addToLevelGoals(_ values: NSSet)

    @objc(removeLevelGoals:)
    @NSManaged public func removeFromLevelGoals(_ values: NSSet)

}

extension Level : Identifiable {

}
