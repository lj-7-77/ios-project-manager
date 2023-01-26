//
//  Item.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import Foundation

struct Item {
    var status: Status
    let title: String
    let body: String
    let deadline: Date
}

enum Status: String {
    case todo = "todo"
    case doing = "doing"
    case done = "done"
}
