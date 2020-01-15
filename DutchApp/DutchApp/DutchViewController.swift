//
//  DutchViewController.swift
//  DutchApp
//
//  Created by Hongdonghyun on 2020/01/15.
//  Copyright © 2020 Team Dutch. All rights reserved.
//

import UIKit


// MARK: - N빵 ViewController
class DutchViewController: UIViewController {
    
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    private let dateTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "2020년 1월 15일"
        return textField
    }()
    
    private let itemLabel: UILabel = {
       let label = UILabel()
        return label
    }()
    
    private let amountLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let numberOfPersonLabel: UILabel = {
       let label = UILabel()
        return label
    }()
    
    private let recentiyUsedAccountButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let accountLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let bankDropDownTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private let accountTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private let accountHolderTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
}


// MARK: - SetUpUI
extension DutchViewController {
    
    private func setUpUI() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            containerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -24),
            containerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22),
            containerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -22)
        ])
        
        self.setUpContainerViewUI()
    }
    
    private func setUpContainerViewUI() {
        let safeArea = containerView.safeAreaLayoutGuide
        let UIArray = [dateTextField]
        UIArray.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            dateTextField.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 60),
            dateTextField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            dateTextField.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
            
        ])
    }
}
