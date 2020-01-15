//
//  AllChargeViewController.swift
//  DutchApp
//
//  Created by MyMac on 2020/01/15.
//  Copyright © 2020 Team Dutch. All rights reserved.
//

import UIKit

class AllChargeViewController: UIViewController {
    let switchSegment = UISegmentedControl()
    let containerView = UIView()
    let dateTextField = UITextField()
    let itemLbl = UILabel()
    let amountsLbl = UILabel()
    let playerLbl = UILabel()
    let numOfPlayerLbl = UILabel()
    let itemTextField = UITextField()
    let amountsTextField = UITextField()
    let playerTextField = UITextField()
    let numOfPlayerTextField = UITextField()
    let calculate = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        view.backgroundColor = .white
        containerView.backgroundColor = .lightGray
        itemLbl.text = "항목"
        amountsLbl.text = "금액"
        playerLbl.text = "참여 인원"
        numOfPlayerLbl.text = "몰빵 인원"
        dateTextField.backgroundColor = .white
        itemTextField.backgroundColor = .white
        amountsTextField.backgroundColor = .white
        playerTextField.backgroundColor = .white
        numOfPlayerTextField.backgroundColor = .white
        calculate.setTitle("계산", for: .normal)
        calculate.frame.size = CGSize(width: 100, height: 40)
        self.view.addSubview(switchSegment)
        self.view.addSubview(containerView)
        self.view.addSubview(dateTextField)
        self.view.addSubview(itemLbl)
        self.view.addSubview(amountsLbl)
        self.view.addSubview(playerLbl)
        self.view.addSubview(numOfPlayerLbl)
        self.view.addSubview(itemTextField)
        self.view.addSubview(amountsTextField)
        self.view.addSubview(playerTextField)
        self.view.addSubview(numOfPlayerTextField)
        self.view.addSubview(calculate)
        setConstraint()
    }
    
    func setConstraint() {
        let guide = self.view.safeAreaLayoutGuide
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 24),
            containerView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -24),
            containerView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 22),
            containerView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -22),
        ])
        
        // MARK: - Labels
        dateTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dateTextField.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 60),
            dateTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            dateTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
        ])
        
        itemLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            itemLbl.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 40),
            itemLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            itemLbl.widthAnchor.constraint(equalToConstant: 80)
        ])
        
        amountsLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            amountsLbl.topAnchor.constraint(equalTo: itemLbl.bottomAnchor, constant: 20),
            amountsLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            amountsLbl.widthAnchor.constraint(equalToConstant: 80)
        ])
        
        playerLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playerLbl.topAnchor.constraint(equalTo: amountsLbl.bottomAnchor, constant: 20),
            playerLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            playerLbl.widthAnchor.constraint(equalToConstant: 80)
        ])
        
        numOfPlayerLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numOfPlayerLbl.topAnchor.constraint(equalTo: playerLbl.bottomAnchor, constant: 20),
            numOfPlayerLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            numOfPlayerLbl.widthAnchor.constraint(equalToConstant: 80)
        ])

        // MARK: -TextFields
        itemTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            itemTextField.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 40),
            itemTextField.leadingAnchor.constraint(equalTo: itemLbl.trailingAnchor, constant: 40),
            itemTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            //itemTextField.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        amountsTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            amountsTextField.topAnchor.constraint(equalTo: itemTextField.bottomAnchor, constant: 20),
            amountsTextField.leadingAnchor.constraint(equalTo: amountsLbl.trailingAnchor, constant: 40),
            amountsTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            //amountsTextField.widthAnchor.constraint(equalToConstant: 100)
        ])

        playerTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playerTextField.topAnchor.constraint(equalTo: amountsTextField.bottomAnchor, constant: 20),
            playerTextField.leadingAnchor.constraint(equalTo: playerLbl.trailingAnchor, constant: 40),
            playerTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            //playerTextField.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        numOfPlayerTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numOfPlayerTextField.topAnchor.constraint(equalTo: playerTextField.bottomAnchor, constant: 20),
            numOfPlayerTextField.leadingAnchor.constraint(equalTo: numOfPlayerLbl.trailingAnchor, constant: 40),
            numOfPlayerTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            //numOfPlayerTextField.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        calculate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            calculate.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            calculate.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -60),
            calculate.widthAnchor.constraint(equalToConstant: 100),
            calculate.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }
}
