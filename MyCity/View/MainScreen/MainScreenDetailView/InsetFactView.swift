//
//  InsetFactView.swift
//  MyCity
//
//  Created by Роман Замолотов on 03.06.2023.
//

import SwiftUI

struct InsetFactView: View {
    let landmark: Landmark
    var body: some View {
        GroupBox {
            TabView {
                ForEach(landmark.fact, id: \.self) { item in
                    Text(item)
                        .font(.custom(mediumFont, size: fontSizeMedium))
                        .foregroundColor(fontColor)
                }
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {

    static var previews: some View {
        InsetFactView(landmark: landmarks[0])
    }
}
