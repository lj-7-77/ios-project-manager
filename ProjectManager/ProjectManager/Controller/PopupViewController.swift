//
//  PopupViewController.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/19.
//

import UIKit

final class PopupViewController: UIViewController {
    let coredataManager = CoreDataManager()
    
    override func loadView() {
        view = createPopupView()
        setupNavigationBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //팝업창 띄울 때 어떤 팝업창으로 띄울지 결정 후, 해당하는 팝업뷰 생성
    private func createPopupView() -> PopupView {
        //switch문
        //+버튼 터치했을 때 -> NewItemPopupView
        let popupView: PopupView = PopupView()
        popupView.backgroundColor = .systemBackground
        //기존항목 터치했을 때 -> PopupView
        //기존항목 터치 + Edit버튼 눌렀을 때 -> EditPopupView
        return popupView
    }
    
    //NewItemPopupView에 이벤트가 발생하면, 하나의 Item타입으로 반환한다.
    //이벤트(새로운할일 입력받고 Done버튼을 누름)
    private func inputNewItem(item: Item) -> Item {
        let newItem: Item = item
        //CoreDataManager - createItem()메서드 호출,
        //값 전달
        return newItem
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "TODO"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(tapCancelButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(tapDoneButton))
    }
    
    @objc private func tapCancelButton() { }
    @objc private func tapDoneButton() { }
}
