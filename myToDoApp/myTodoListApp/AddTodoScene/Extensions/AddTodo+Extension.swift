//
//  AddTodo+Extension.swift
//  myTodoListApp
//
//  Created by Decagon on 08/09/2021.
//
import UIKit

extension AddTodoViewController {
  func layoutViews() {
    view.addSubview(saveButton)
    view.addSubview(titleLabel)
    view.addSubview(titleTextField)
    view.addSubview(descLabel)
    view.addSubview(descTextView)
    
    let stack = UIStackView(arrangedSubviews: [importantLabel,toggle])
    stack.axis = .horizontal
    stack.distribution = .fillEqually
    stack.spacing = 150
    view.addSubview(stack)
    
    NSLayoutConstraint.activate([
      saveButton.heightAnchor.constraint(equalToConstant: 52),
      saveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
      saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      
      titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
      titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      
      titleTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
      titleTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      titleTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      titleTextField.heightAnchor.constraint(equalToConstant: 52),
      
      descLabel.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 16),
      descLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      
      descTextView.topAnchor.constraint(equalTo: descLabel.bottomAnchor, constant: 16),
      descTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      descTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      descTextView.heightAnchor.constraint(equalToConstant: 200),
      
    ])
    _ = stack.anchor(descTextView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 20, leftConstant: 16, bottomConstant: 0, rightConstant: -16, widthConstant: 0, heightConstant: 40)
  }
  
}

