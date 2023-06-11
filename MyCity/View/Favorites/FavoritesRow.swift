//
//  FavoritesRow.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoritesRow: View {
    @StateObject var favoritesVM = FavoritesViewModel()
    
    var body: some View {
        ScrollView {
            ForEach(favoritesVM.filteredFavorites) { landmark in
                if favoritesVM.contains(landmark) == true {
                    HStack{
                        FavoritesCheckBoxView(landmark: landmark)
                        NavigationLink {
                            LandmarkDetailView(landmark: landmark)
                        } label: {
                            ListItemView(landmark: landmark)
                        }
                    }
                } else {
                    Text("Нет Элементов в избранном")
                }
            }
        }
    }
}

struct FavoritesRow_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesRow()
        
    }
}
