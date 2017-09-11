//
//  BaseViewController.swift
//  MVVM
//
//  Created by truong.tuan.quang on 9/11/17.
//  Copyright © 2017 com.pets.shop. All rights reserved.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {
    
    // MARK: Property
    
    var viewModel: BaseViewModel?
    let disposeBag = DisposeBag()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewModel()
        self.bindViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: Action
    
    // MARK: Method
    
    func setupViewModel() {
    }
    
    func bindViewModel() {
    }
    
    // MARK: API
}
