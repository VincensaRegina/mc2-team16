//
//  HistoryMission+CoreDataProperties.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 29/06/22.
//
//

import Foundation
import CoreData


extension HistoryMission {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HistoryMission> {
        return NSFetchRequest<HistoryMission>(entityName: "HistoryMission")
    }

    @NSManaged public var name: String?
    @NSManaged public var reward: String?
    @NSManaged public var emoji: String?

}

extension HistoryMission : Identifiable {

}
