//
//  MainView.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import UIKit

final class MainView: UIView {
    var todoTableView = UITableView()
    var doingTableView = UITableView()
    var doneTableView = UITableView()
    
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
        self.addSubview(todoTableView)
        self.addSubview(doingTableView)
        self.addSubview(doneTableView)
        setupConstraints()
    }

    //오토레이아웃 제약 설정
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            todoTableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            todoTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
        ])
    }
}


final class CustomCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
