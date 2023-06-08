//
//  FavoriteButtonVIew.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoriteButtonVIew: View {
    
    @State var landmark: Landmark
    @EnvironmentObject var favoritesVM: FavoriteViewMoidel
    
    var body: some View {
        
        Button {
            favoritesVM.isAddToFavorite.toggle()
            landmark.isAddToFavorite = favoritesVM.isAddToFavorite
        } label: {
            Image(systemName: favoritesVM.isAddToFavorite ? "heart.fill" : "heart")
                .foregroundColor(.accentColor)
                .font(.title)
        }
    }
}

struct FavoriteButtonVIew_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButtonVIew(landmark: landmarks[0])
            .environmentObject(FavoriteViewMoidel())
    }
}
