//
//  ViewController.swift
//  DutchApp
//
//  Created by Hongdonghyun on 2020/01/15.
//  Copyright © 2020 Team Dutch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        view.backgroundColor = .white
        button.setTitle("다음페이지", for: .normal)
        button.frame = CGRect(x: 40, y: 40, width: 100, height: 50)
        button.addTarget(self, action: #selector(touch(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func touch(_ sender: UIButton) {
        let next = AllChargeViewController()
        present(next, animated: true)
    }


}

