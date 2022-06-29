//
//  HistoryBalance+CoreDataProperties.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 29/06/22.
//
//

import Foundation
import CoreData


extension HistoryBalance {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HistoryBalance> {
        return NSFetchRequest<HistoryBalance>(entityName: "HistoryBalance")
    }

    @NSManaged public var date: Date?
    @NSManaged public var income: Int64
    @NSManaged public var expenses: Int64
    @NSManaged public var history: Balance?
    @NSManaged public var historyLevel: Level?

}

extension HistoryBalance : Identifiable {

}
