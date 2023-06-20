//
//  ContentView.swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import SwiftUI

struct MainTabView: View {
    
    @EnvironmentObject var favoritesVM: FavoritesViewModel
    
    var body: some View {
        TabView{
            
            MainScreenView()
                .environmentObject(favoritesVM)
                .tabItem {
                    Image(systemName: "star")
                    Text("Главная")
                }
            
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Карта")
                }
            
            FavoritesRowView()
                .environmentObject(favoritesVM)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Избранное")
                    
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
