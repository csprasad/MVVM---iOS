//
//  PersonModel.swift
//  MVVM Learning
//
//  Created by CSPrasad on 21/06/22.
//

import Foundation

struct PersonModel {
    var isLogin: Bool
    var id: String
    var name: String
    var email: String
    var cell: Int
    var address: String
    var height: Double
    
    init(isLogin: Bool, id: String, name: String, email: String, cell: Int, address: String, height: Double) {
        self.isLogin = isLogin
        self.id = id
        self.name = name
        self.email = email
        self.cell = cell
        self.address = address
        self.height = height
    }
}
