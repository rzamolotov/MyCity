//
//  FavoritesRowView.swift
//  MyCity
//
//  Created by Роман Замолотов on 11.06.2023.
//

import SwiftUI

struct FavoritesRowView: View {
    @EnvironmentObject var favoritesVM: FavoritesViewModel
        
        var body: some View {
            ScrollView {
                if favoritesVM.favorites.isEmpty {
                    Text("Нет элементов в избранном")
                } else {
                    ForEach(favoritesVM.favorites) { landmark in
                        HStack {
                            FavoritesCheckBoxView(landmark: landmark)
                            NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                                ListItemView(landmark: landmark)
                            }
                        }
                    }
                }
            }
        }
    }


struct FavoritesRowView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesRowView()
            .environmentObject(FavoritesViewModel())
    }
}
