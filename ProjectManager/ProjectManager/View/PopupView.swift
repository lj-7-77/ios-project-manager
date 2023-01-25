//
//  PopupView.swift
//  ProjectManager
//
//  Created by 임지연 on 2023/01/19.
//

import UIKit

class PopupView: UIView {
    let contentTitle: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Title"
        textField.font = UIFont.preferredFont(forTextStyle: .title3)
        return textField
    }()
    
    let contentBody: UITextView = {
       let textView = UITextView()
        textView.font = UIFont.preferredFont(forTextStyle: .body)
        return textView
    }()
    
    let contentDeadline: UIDatePicker = {
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 30, width: 300, height: 300))
        datePicker.timeZone = NSTimeZone.local
        datePicker.backgroundColor = UIColor.white
        datePicker.preferredDatePickerStyle = .wheels
        return datePicker
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [contentTitle, contentDeadline, contentBody])
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PopupView {
    private func setupUI() {
        self.addSubview(stackView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView.widthAnchor.constraint(equalTo: self.widthAnchor),
            contentBody.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 0.4)
        ])
    }
}
