//
//  Goals+CoreDataProperties.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 29/06/22.
//
//

import Foundation
import CoreData


extension Goals {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Goals> {
        return NSFetchRequest<Goals>(entityName: "Goals")
    }

    @NSManaged public var name: String?
    @NSManaged public var price: Int64
    @NSManaged public var progress: Double
    @NSManaged public var peopleGoals: Person?
    @NSManaged public var goalsBalance: Balance?
    @NSManaged public var levelGoals: Level?

}

extension Goals : Identifiable {

}
