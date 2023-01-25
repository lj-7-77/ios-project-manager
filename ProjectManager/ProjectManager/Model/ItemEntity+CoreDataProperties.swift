//
//  ItemEntity+CoreDataProperties.swift
//  
//
//  Created by 임지연 on 2023/01/26.
//
//

import Foundation
import CoreData

@objc(ItemEntity)
public class ItemEntity: NSManagedObject { }

extension ItemEntity {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemEntity> {
        return NSFetchRequest<ItemEntity>(entityName: "ItemEntity")
    }

    @NSManaged public var body: String?
    @NSManaged public var deadline: Date?
    @NSManaged public var status: String?
    @NSManaged public var title: String?

}
