//
//  MainView.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import UIKit

class MainView: UIView {
    var todoTableView = UITableView()
    
    let plusButton: UIBarButtonItem = {
        let button = UIBarButtonItem()
        button.title = "+"
        button.style = .plain
        button.tintColor = .systemBlue
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBackground
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainView {
    private func setupUI() {
//        self.addSubview(todoTableView) //뷰 요소 추가
//        setupConstraints() 함수 호출
    }

    //오토레이아웃 제약 설정
    private func setupConstraints() {

    }
}
