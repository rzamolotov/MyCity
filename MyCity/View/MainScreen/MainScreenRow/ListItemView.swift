//
//  AnimalListItemView.swift
//  MyCity
//
//  Created by Роман Замолотов on 02.06.2023.
//

import SwiftUI

struct ListItemView: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(landmark.image)
                .resizable()
                .scaledToFill()
                .frame(width: screen.height / 10, height: screen.height / 10)
                .clipShape(Rectangle())
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 8) {
                Text(landmark.name)
                    .font(.custom(boldFont, size: fontSizeMediuPlus))
                    .lineLimit(1)
                    .foregroundColor(.accentColor)
                Text(landmark.headline)
                    .font(.custom(mediumFont, size: fontSizeSmall))
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                    .foregroundColor(fontColor)
            }
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(landmark: landmarks[0])
    }
}
