//
//  AnimalGridItemView.swift
//  MyCity
//
//  Created by Роман Замолотов on 04.06.2023.
//

import SwiftUI

struct GridItemView: View {
    
    let landmark: Landmark
    
    var body: some View {
        Image(landmark.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView(landmark: landmarks[0])
    }
}
