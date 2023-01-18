//
//  ProjectManager - MainViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 
import UIKit
import CoreData

final class MainViewController: UIViewController {
    let mainView = MainView()
    var container: NSPersistentContainer!
    let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate

    override func loadView() {
        view = mainView
        setupNavigationBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.todoTableView.delegate = self
        mainView.todoTableView.dataSource = self
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Project Manager"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"),
                                                            style: .plain,
                                                            target: self,
                                                            action: #selector(tapPlusButton))
    }
    
    @objc private func tapPlusButton() {
        showNewItemPopup()
    }
    
    private func showNewItemPopup() {
        let popupViewController = UINavigationController(rootViewController: PopupViewController())
        popupViewController.modalPresentationStyle = .formSheet
        self.present(popupViewController, animated: true, completion: nil)
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    
}

class tableCell: UITableViewCell {
    
}




final class PopupViewController: UIViewController {
    let coredataManager = CoreDataManager()
    
    override func loadView() {
        view = createPopupView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //팝업창 띄울 때 어떤 팝업창으로 띄울지 결정 후, 해당하는 팝업뷰 생성
    private func createPopupView() -> PopupView {
        //switch문
        //+버튼 터치했을 때 -> NewItemPopupView
        let popupView: PopupView = NewItemPopupView()
        popupView.backgroundColor = .darkGray
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
}
