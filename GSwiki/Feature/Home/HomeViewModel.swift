//
//  HomeViewModel.swift
//  GSwiki
//
//  Created by 박성민 on 8/28/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var isLogin: Bool
    @Published var name: String
    
    init(
        isLogin: Bool = false,
        name: String = "로그인"
    ) {
        self.isLogin = isLogin
        self.name = name
    }
}
