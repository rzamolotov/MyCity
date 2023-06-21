//
//  ContentView.swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import SwiftUI


struct MainTabView: View {
    
    @EnvironmentObject var favoritesVM: FavoritesViewModel
    
    enum TabType: Int {
        case main
        case map
        case favorite
    }
    
    @State private var selectedTab: TabType = .main
    @State private var cartCount: Int = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                TabView(selection: $selectedTab) {
                    mainView.tag(TabType.main)
                    mapView.tag(TabType.map)
                    favoriteView.tag(TabType.favorite)
                }
                HStack(spacing: 0) {
                    TabBarItem(
                        icon: Image(systemName: "star"),
                        title: "Главная",
                        badgeCount: 0,
                        isSelected: selectedTab == .main,
                        itemVidth: geometry.size.width / 3
                    ) {
                        selectedTab = .main
                    }
                    
                    TabBarItem(
                        icon: Image(systemName: "map"),
                        title: "Карта",
                        badgeCount: 0,
                        isSelected: selectedTab == .map,
                        itemVidth: geometry.size.width / 3
                    ) {
                        selectedTab = .map
                    }
                    
                    TabBarItem(
                        icon: Image(systemName: "heart"),
                        title: "Избранное",
                        badgeCount: 0,
                        isSelected: selectedTab == .favorite,
                        itemVidth: geometry.size.width / 3
                    ) {
                        selectedTab = .favorite
                    }
                }
            }
            .ignoresSafeArea(.keyboard)
        }
        
    }
    @ViewBuilder
    private var mainView: some View {
        MainScreenView()
            .environmentObject(favoritesVM)
    }
    
    @ViewBuilder
    private var mapView: some View {
        MapView()
    }
    
    @ViewBuilder
    private var favoriteView: some View {
        FavoritesRowView()
            .environmentObject(favoritesVM)
    }
    
}



struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
