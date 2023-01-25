//
//  CoreDataManager.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import UIKit
import CoreData

final class CoreDataManager {
    
    //MARK: - Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ItemModel")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error)")
            }
        }
        
        return container
    }()
    
    func fetch() {
        
    }
    
    func createItem(_ newItem: Item) {
        let context = persistentContainer.viewContext
        guard let itemEntity = NSEntityDescription.entity(forEntityName: "ItemEntity", in: context) else {
            return
        }
        let item = NSManagedObject(entity: itemEntity, insertInto: context)
        item.setValue(newItem.title, forKeyPath: "title")
        item.setValue(newItem.body, forKeyPath: "body")
        item.setValue(newItem.deadline, forKeyPath: "deadline")
        item.setValue("\(newItem.status)", forKeyPath: "status")
        
        saveContext()
    }
    
    func update() {
        
        saveContext()
    }
    
    func delete() {
        
        saveContext()
    }
    
    //MARK: - Core Data Saving support
    private func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror)")
            }
        }
    }
}
