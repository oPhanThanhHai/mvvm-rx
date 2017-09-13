//
//  DemoLoginViewController.swift
//  MVVM
//
//  Created by truong.tuan.quang on 9/11/17.
//  Copyright © 2017 com.pets.shop. All rights reserved.
//

import UIKit

class DemoLoginViewController: BaseViewController {

    // MARK: Property
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    let viewModel = DemoLoginViewModel()
    
    // MARK: Method
    
    override func bindViewModel() {
        self.usernameTextField?.rx.text.bind(to: self.viewModel.username).disposed(by: disposeBag)
        self.passwordTextField?.rx.text.bind(to: self.viewModel.password).disposed(by: disposeBag)
        
        self.loginButton?.rx.tap.subscribe(onNext: { _ in
            print("Tap Login Button")
        }).disposed(by: disposeBag)
        self.loginButton?.rx.action = self.viewModel.loginAction
    }
}
