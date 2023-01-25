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
             body: "SwiftUI를 공부한다",
             deadline: Date()),
        Item(status: .todo,
             title: "오늘자 일일회고 작성하기",
             body: "일일회고는 생명이니까 반드시 작성해야지",
             deadline: Date()),
        Item(status: .doing,
             title: "아침먹기",
             body: "먹어야 산다",
             deadline: Date()),
        Item(status: .doing,
             title: "운동하기",
             body: "운동해야 산다",
             deadline: Date()),
        Item(status: .done,
             title: "잠자기",
             body: "쉴 땐 쉬어야지",
             deadline: Date()),
        Item(status: .done,
             title: "커피 한잔",
             body: "한잔이 두잔이 되고 두잔이 세잔이 되고...",
             deadline: Date()),
        Item(status: .todo,
             title: "이력서랑 포폴 좀 정리해보기",
             body: "무엇이 중요한가",
             deadline: Date()),
        Item(status: .done,
             title: "모각코?",
             body: "할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 할까말까 ",
             deadline: Date()),
        Item(status: .doing,
             title: "핸드폰 충전하기",
             body: "얼마나 쓸게 없었겠어요",
             deadline: Date()),
        Item(status: .doing,
             title: "누워있기",
             body: "누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다 일어났다 누웠다",
             deadline: Date()),
        Item(status: .doing,
             title: "다이어트",
             body: "늦은 시간에 뭐 먹지 말기!!!!!!!!!!!",
             deadline: Date())
    ]
}
