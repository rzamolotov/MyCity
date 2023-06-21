//
//  TabBarItem.swift
//  MyCity
//
//  Created by Роман Замолотов on 20.06.2023.
//

import SwiftUI

struct TabBarItem: View {
    
    let icon: Image
    let title: String
    let badgeCount: Int
    let isSelected: Bool
    let itemVidth: CGFloat
    let onTap: () -> ()
    
    var body: some View {
        Button {
            onTap()
        } label: {
            VStack(alignment: .center, spacing: 2.0) {
                ZStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                        .foregroundColor(.gray).opacity(0.5)
//                        .opacity(isSelected ? 1.0 : 0.0)
                    ZStack {
                        icon
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 28, height: 28)
                            .foregroundColor(isSelected ? .accentColor : fontColor)
                        Text("\(badgeCount)")
                            .kerning(0.3)
                            .lineLimit(1)
                            .truncationMode(.tail)
                            .foregroundColor(.white)
                            .font(.custom(boldFont, size: fontSizeVerySmall / 2))
                            .padding(.horizontal, 4)
                            .background(Color.accentColor)
                            .cornerRadius(50)
                            .opacity(badgeCount == 0 ? 0.0 : 1.0)
                            .offset(x: 16.0, y: -8.0)
                    }
                }
                Text(title)
                    .font(.custom(boldFont, size: fontSizeSmall / 1.5))
                    .foregroundColor(isSelected ? .accentColor : fontColor)
            }
            .onTapGesture(perform: {
                withAnimation {
                   //Сделать анимацию смещения при нажатии на кнопку
                   
                }
            })
            .frame(width: itemVidth)
        }
        .buttonStyle(.plain)
    }
}

//struct TabBarItem_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarItem(icon: (Image(systemName: "heart")), title: "Избранное", badgeCount: 0, isSelected: false, itemVidth: 30)
//    }
//}
