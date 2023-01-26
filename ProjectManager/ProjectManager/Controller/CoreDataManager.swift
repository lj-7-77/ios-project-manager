//
//  CoreDataManager.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import UIKit
import CoreData

final class CoreDataManager {
    static let shared = CoreDataManager()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ItemModel")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error)")
            }
        }
        
        return container
    }()
    
    private var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func readItems() -> [Item] {
        var items: [Item] = []
        let fetchResults: [ItemEntity] = fetchData()
        fetchResults.forEach { result in
            let item = Item(status: Status(rawValue: "\(result.status ?? "")") ?? Status.todo,
                            title: result.title ?? "",
                            body: result.body ?? "",
                            deadline: result.deadline ?? Date())
            items.append(item)
        }
        return items
    }
    
    func fetchData() -> [ItemEntity] {
        var itemEntities: [ItemEntity] = []
        
        do {
            let requestEntity = ItemEntity.fetchRequest()
            itemEntities = try context.fetch(requestEntity)
            return itemEntities
        } catch {
            print(error.localizedDescription)
        }
        return []
    }
    
    func createItem(_ newItem: Item) {
        guard let itemEntity =
                NSEntityDescription.entity(forEntityName: "ItemEntity", in: context) else {
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
    
    private func saveContext() {
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
