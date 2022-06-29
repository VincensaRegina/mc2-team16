//
//  Person+CoreDataProperties.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 29/06/22.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var goalsInPerson: String?
    @NSManaged public var balanceInPerson: Int64
    @NSManaged public var levelInPerson: Double
    @NSManaged public var peopleBalance: Balance?
    @NSManaged public var peopleGoals: NSSet?
    @NSManaged public var peopleLevel: Level?

}

// MARK: Generated accessors for peopleGoals
extension Person {

    @objc(addPeopleGoalsObject:)
    @NSManaged public func addToPeopleGoals(_ value: Goals)

    @objc(removePeopleGoalsObject:)
    @NSManaged public func removeFromPeopleGoals(_ value: Goals)

    @objc(addPeopleGoals:)
    @NSManaged public func addToPeopleGoals(_ values: NSSet)

    @objc(removePeopleGoals:)
    @NSManaged public func removeFromPeopleGoals(_ values: NSSet)

}

extension Person : Identifiable {

}
