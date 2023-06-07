//
//  AnimalGridItemView.swift
//  MyCity
//
//  Created by Роман Замолотов on 04.06.2023.
//

import SwiftUI

struct GridItemView: View {
    
    let landmark: Landmark
    let numberOfRows: Int
    
    var body: some View {
        ZStack {
            Image(landmark.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            HStack {
                Spacer()
                VStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text(landmark.name)
                        .font(.custom(extraBoldFont, size: fontSizeLarge / CGFloat(numberOfRows)))
                        .foregroundColor(.white)
                        .padding([.leading, .trailing])
                        .background(
                            Color.gray
                                .opacity(0.5)
                                .cornerRadius(10)
                        )
                        
                    Spacer()
                    
                }
            }
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView(landmark: landmarks[0], numberOfRows: 1)
    }
}
