//
//  AnimalListItemView.swift
//  MyCity
//
//  Created by Роман Замолотов on 02.06.2023.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(landmark.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(landmark.name)
                    .font(.title3)
                    .lineLimit(1)
                    .foregroundColor(.accentColor)
                Text(landmark.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let landmarks: [Landmark] = Bundle.main.decode("sevastopol.json")
    static var previews: some View {
        AnimalListItemView(landmark: landmarks[0])
    }
}
