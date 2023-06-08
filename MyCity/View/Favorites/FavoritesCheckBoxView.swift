//
//  FavoritesCheckBoxView.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import SwiftUI

struct FavoritesCheckBoxView: View {
    @Binding var isAddToRoute: Bool
    
    var body: some View {
        Button{
            isAddToRoute.toggle()
        } label: {
            Image(systemName: isAddToRoute ? "checkmark.square" : "square")
                .foregroundColor(.accentColor)
                .font(.title)
        }
       
    }
}

struct FavoritesCheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesCheckBoxView(isAddToRoute: .constant(false))
    }
}
