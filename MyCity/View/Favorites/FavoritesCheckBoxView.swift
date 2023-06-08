//
//  FavoritesCheckBoxView.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoritesCheckBoxView: View {
    @State var landmark: Landmark
    @EnvironmentObject var favoritesVM: FavoriteViewMoidel
    
    var body: some View {
        Button {
            favoritesVM.isAddToRoute.toggle()
            landmark.isAddToRoute = favoritesVM.isAddToRoute
        } label: {
            Image(systemName: favoritesVM.isAddToRoute ? "checkmark.square" : "square")
                .foregroundColor(.accentColor)
                .font(.title)
        }
    }
}

struct FavoritesCheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesCheckBoxView(landmark: landmarks[0])
            .environmentObject(FavoriteViewMoidel())
    }
}
