//
//  GSwikiApp.swift
//  GSwiki
//
//  Created by 박성민 on 8/24/24.
//

import SwiftUI

@main
struct GSwikiApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(homeViewModel: HomeViewModel())
        }
    }
}
