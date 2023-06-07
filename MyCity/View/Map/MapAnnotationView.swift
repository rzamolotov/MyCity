//
//  MapAnnotationView.swift
//  MyCity
//
//  Created by Роман Замолотов on 03.06.2023.
//

import SwiftUI

struct MapAnnotationView: View {
    var landmark: Landmark
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
//            Circle()
//                .fill(Color.accentColor)
//                .frame(width: 54, height: 54, alignment: .center)
            
                Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
                
            Image(systemName: "mappin.circle")
                .foregroundColor(.accentColor)
                .font(.title)
                .scaledToFill()
                .frame(width: 48, height: 48)
            .clipShape(Circle())
        }
        .onAppear{
            withAnimation(
                Animation
                    .easeOut(duration: 2)
                    .repeatForever(autoreverses: false)
            ) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var landmarks: [Landmark] = Bundle.main.decode("sevastopol.json")
    static var previews: some View {
        MapAnnotationView(landmark: landmarks[0])
    }
}
