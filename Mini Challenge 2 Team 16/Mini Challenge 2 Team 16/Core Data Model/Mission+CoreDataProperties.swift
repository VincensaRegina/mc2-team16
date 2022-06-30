//
//  Mission+CoreDataProperties.swift
//  Mini Challenge 2 Team 16
//
//  Created by Ilham Wibowo on 29/06/22.
//
//

import Foundation
import CoreData


extension Mission {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Mission> {
        return NSFetchRequest<Mission>(entityName: "Mission")
    }

    @NSManaged public var name: String?
    @NSManaged public var reward: Int64
    @NSManaged public var emoji: String?

}

extension Mission : Identifiable {

}
