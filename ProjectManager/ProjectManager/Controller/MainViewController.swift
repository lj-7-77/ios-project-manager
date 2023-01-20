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
        mainView.todoTableView.register(CustomCell.self, forCellReuseIdentifier: "cell")

        mainView.doingTableView.delegate = self
        mainView.doingTableView.dataSource = self
        mainView.doingTableView.register(CustomCell.self, forCellReuseIdentifier: "cell")

        mainView.doneTableView.delegate = self
        mainView.doneTableView.dataSource = self
        mainView.doneTableView.register(CustomCell.self, forCellReuseIdentifier: "cell")
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

extension MainViewController:  UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.reuseIdentifier,
                                                       for: indexPath)
                as? UITableViewCell else {
            return UITableViewCell()
        }

        return cell
    }
}
