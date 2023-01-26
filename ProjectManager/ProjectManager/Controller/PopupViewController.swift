//
//  PopupViewController.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/19.
//

import UIKit

final class PopupViewController: UIViewController {
    let popupView: PopupView = PopupView()
    
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
        popupView.backgroundColor = .systemBackground
        //기존항목 터치했을 때 -> PopupView
        //기존항목 터치 + Edit버튼 눌렀을 때 -> EditPopupView
        return popupView
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
    
    @objc private func tapCancelButton() {
        self.dismiss(animated: true)
    }
    
    @objc private func tapDoneButton() {
        let item: Item = Item(status: .todo,
                              title: popupView.contentTitle.text ?? "",
                              body: popupView.contentBody.text,
                              deadline: popupView.contentDeadline.date)
        saveNewItem(item)
        self.dismiss(animated: true)
    }
    
    private func saveNewItem(_ item: Item) {
        CoreDataManager.shared.createItem(item)
    }
}
