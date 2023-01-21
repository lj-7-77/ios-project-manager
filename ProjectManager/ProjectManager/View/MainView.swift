//
//  MainView.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import UIKit

final class MainView: UIView {
    let todoTableView = UITableView()
    let doingTableView = UITableView()
    let doneTableView = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBackground
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var tableStackView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [todoTableView,
                                                                    doingTableView,
                                                                    doneTableView])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
}

extension MainView {
    private func setupUI() {
        self.addSubview(tableStackView)
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            tableStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            tableStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
    }
}
