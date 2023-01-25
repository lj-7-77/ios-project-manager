//
//  CustomCell.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/21.
//

import UIKit

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
    
    private let bodyLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let deadlineLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, bodyLabel, deadlineLabel])
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
}

extension CustomCell {
    private func setupUI() {
        self.addSubview(labelStackView)
        setupConstraints()
    }
    
    func setupCell(_ item: Item) {
        titleLabel.text = item.title
        bodyLabel.text = item.body
        deadlineLabel.text = "\(item.deadline)"
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
