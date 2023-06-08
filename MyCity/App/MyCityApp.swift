//
//  MyCityApp.swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import SwiftUI

@main
struct MyCityApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(FavoriteViewMoidel())
        }
    }
}
