//
//  FavoritesRow.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoritesRow: View {
        var landmarks: [Landmark]
        @EnvironmentObject var favoriteVM: FavoriteViewMoidel
        
        var body: some View {
            List(landmarks) { landmark in
                if favoriteVM.isAddToFavorite {
                    FavoritesItemView(landmark: landmark)
                }
            }
        }
    }

struct FavoritesRow_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesRow(landmarks: landmarks)
            .environmentObject(FavoriteViewMoidel())
    }
}
