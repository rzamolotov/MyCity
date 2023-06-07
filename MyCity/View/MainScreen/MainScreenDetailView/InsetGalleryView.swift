//
//  InsetGalleryView.swift
//  MyCity
//
//  Created by Роман Замолотов on 03.06.2023.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let landmark: Landmark
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(landmark.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        InsetGalleryView(landmark: landmarks[0])
    }
}
