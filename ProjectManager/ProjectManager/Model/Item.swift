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
    let description: String
    let deadLine: Date
}

enum Status {
    case todo
    case doing
    case done
}
