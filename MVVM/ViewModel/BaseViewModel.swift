//
//  BaseViewModel.swift
//  MVVM
//
//  Created by truong.tuan.quang on 9/11/17.
//  Copyright © 2017 com.pets.shop. All rights reserved.
//

import Foundation
import RxSwift

class BaseViewModel: NSObject {
    let disposeBag = DisposeBag()
    
    deinit {
        print(NSStringFromClass(self.classForCoder) + " . " + #function)
    }
}
