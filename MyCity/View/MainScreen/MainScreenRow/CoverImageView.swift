//
//  CoverImageView.swift
//  MyCity
//
//  Created by Роман Замолотов on 02.06.2023.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
