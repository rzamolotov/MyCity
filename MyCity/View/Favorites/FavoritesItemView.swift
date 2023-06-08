//
//  FavoritesItemView.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoritesItemView: View {
    var landmark: Landmark
    @StateObject var favoritesVM = FavoriteViewMoidel()
    
    var body: some View {
        HStack{
            FavoritesCheckBoxView(isAddToRoute: favoritesVM.isAddToRoute)
            ListItemView(landmark: landmark)
        }
    }
}

struct FavoritesItemView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesItemView(landmark: landmarks[0])
    }
}
