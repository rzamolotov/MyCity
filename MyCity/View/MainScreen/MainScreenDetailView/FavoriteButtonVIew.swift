//
//  FavoriteButtonVIew.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoriteButtonVIew: View {
    
    @EnvironmentObject var favoritesVM: FavoritesViewModel
    @State var landmark: Landmark
    
    var body: some View {
        Button(action: {
            favoritesVM.addToFavorites(item: landmark)
        }) {
            Image(systemName: favoritesVM.isFavorite(item: landmark) ? "heart.fill" : "heart")
                .foregroundColor(.accentColor)
                .font(.title)
        }
    }
}

struct FavoriteButtonVIew_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButtonVIew(landmark: landmarks[0])
            .environmentObject(FavoritesViewModel())
        
    }
}
