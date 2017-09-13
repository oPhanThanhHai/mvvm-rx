//
//  DemoLoginViewModel.swift
//  MVVM
//
//  Created by truong.tuan.quang on 9/11/17.
//  Copyright © 2017 com.pets.shop. All rights reserved.
//

import Foundation

class DemoLoginViewModel {
    
    var username = Variable<String?>("")
    var password = Variable<String?>("")
    var loginAction: CocoaAction!
    
    init() {
        self.loginAction = CocoaAction { _ in
            print("Username: \(self.username.value ?? "")")
            print("Password: \(self.password.value ?? "")")
            return .just()
        }
    }
}
