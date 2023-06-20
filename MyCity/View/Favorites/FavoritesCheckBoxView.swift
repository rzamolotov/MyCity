//
//  FavoritesCheckBoxView.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoritesCheckBoxView: View {

     var landmark: Landmark
    
    var body: some View {
        Button {
//            landmark.isAddToRoute.toggle()
        } label: {
            Image(systemName: landmark.isAddToRoute ? "checkmark.square" : "square")
                .foregroundColor(.accentColor)
                .font(.title)
        }
    }
}

struct FavoritesCheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesCheckBoxView(landmark: landmarks[0])
            .environmentObject(FavoritesViewModel())
    }
}
