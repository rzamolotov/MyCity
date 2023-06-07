//
//  HeadingView.swift
//  MyCity
//
//  Created by Роман Замолотов on 03.06.2023.
//

import SwiftUI

struct HeadingView: View {
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(greenBrightColor)
                .imageScale(.large)
            Text(headingText)
                .font(.custom(boldFont, size: fontSizeMediuPlus))
                .foregroundColor(fontColor)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Галерея")
    }
}
