//
//  MainView.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/17.
//

import UIKit

final class MainView: UIView {
    var todoTableView = CustomTableView()
    var doingTableView = CustomTableView()
    var doneTableView = CustomTableView()
    
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

final class CustomTableView: UITableView {
    init() {
        super.init(frame: .zero, style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class CustomCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static let reuseIdentifier: String = "cell"
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let deadLineLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel, deadLineLabel])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
}

extension CustomCell {
    private func setupUI() {
        configureCellContents()
        self.addSubview(labelStackView)
        setupConstraints()
    }
    
    private func configureCellContents() {
        let arr: [Item] = DummyItems.items

        arr.forEach{ test($0) }
    }
    
    private func test(_ item: Item) {
        var todoArr: [Item] = []
        var doingArr: [Item] = []
        var doneArr: [Item] = []
        
        switch item.status {    //분류
        case .todo:
            todoArr.append(item)
        case .doing:
            doingArr.append(item)
        case .done:
            doneArr.append(item)
        }
        
//        bindingData() //값 넣기
    }
    
    private func bindingData(_ arr: [Item]) {
//        arr.forEach { $0 in
//            self.titleLabel = $0.title
//        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            labelStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            labelStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            labelStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
}
