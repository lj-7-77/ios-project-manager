//
//  DummyItems.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/19.
//

import Foundation

struct DummyItems {
    static var items: [Item] = [
        Item(status: .todo,
             title: "SwiftUI공부하기",
             description: "SwiftUI를 공부한다",
             deadLine: Date()),
        Item(status: .todo,
             title: "오늘자 일일회고 작성하기",
             description: "일일회고는 생명이니까 반드시 작성해야지",
             deadLine: Date()),
        Item(status: .doing,
             title: "아침먹기",
             description: "먹어야 산다",
             deadLine: Date()),
        Item(status: .doing,
             title: "운동하기",
             description: "운동해야 산다",
             deadLine: Date()),
        Item(status: .done,
             title: "잠자기",
             description: "쉴 땐 쉬어야지",
             deadLine: Date()),
        Item(status: .done,
             title: "커피 한잔",
             description: "한잔이 두잔이 되고 두잔이 세잔이 되고...",
             deadLine: Date()),
        Item(status: .todo,
             title: "이력서랑 포폴 좀 정리해보기",
             description: "무엇이 중요한가",
             deadLine: Date()),
        Item(status: .done,
             title: "모각코?",
             description: "할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 ",
             deadLine: Date()),
        Item(status: .doing,
             title: "핸드폰 충전하기",
             description: "얼마나 쓸게 없었겠어요",
             deadLine: Date()),
        Item(status: .doing,
             title: "누워있기",
             description: "누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다",
             deadLine: Date()),
        Item(status: .doing,
             title: "다이어트",
             description: "늦은 시간에 뭐 먹지 말기!!!!!!!!!!!",
             deadLine: Date())
    ]
}
