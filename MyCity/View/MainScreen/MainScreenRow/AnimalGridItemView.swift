//
//  AnimalGridItemView.swift
//  MyCity
//
//  Created by Роман Замолотов on 04.06.2023.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let landmark: Landmark
    
    var body: some View {
        Image(landmark.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    
    static let landmarks: [Landmark] = Bundle.main.decode("sevastopol.json")
    static var previews: some View {
        AnimalGridItemView(landmark: landmarks[0])
    }
}
