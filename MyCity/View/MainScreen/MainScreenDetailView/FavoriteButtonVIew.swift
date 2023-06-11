//
//  FavoriteButtonVIew.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoriteButtonVIew: View {
    
    @State var landmark: Landmark
    @StateObject var favoritesVM = FavoritesViewModel()
    
    var body: some View {
        
        Button {
            favoritesVM.toggleFavorite(landmarksFavorite: landmark)
        } label: {
            Image(systemName: favoritesVM.contains(landmark) ? "heart.fill" : "heart")
                .foregroundColor(.accentColor)
                .font(.title)
        }
    }
}

struct FavoriteButtonVIew_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButtonVIew(landmark: landmarks[0])
            
    }
}
