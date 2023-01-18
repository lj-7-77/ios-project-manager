//
//  Item.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import Foundation

struct Item {
    let title: String
    let body: String
    let deadLine: Date
    var status: Status
}

enum Status {
    case todo
    case doing
    case done
}
