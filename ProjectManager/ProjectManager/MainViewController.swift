//
//  ProjectManager - MainViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 
import UIKit

class MainViewController: UIViewController {
    let mainView = MainView()
    
    override func loadView() {
        view = mainView
        setupNavigationBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Project Manager"
        navigationItem.rightBarButtonItem = mainView.plusButton
    }
}
