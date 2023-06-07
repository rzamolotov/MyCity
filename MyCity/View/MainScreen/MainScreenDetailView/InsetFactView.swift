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
                    
                }
            }
            .tabViewStyle(.page)
            
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let landmarks: [Landmark] = Bundle.main.decode("sevastopol.json")
    static var previews: some View {
        InsetFactView(landmark: landmarks[0])
    }
}
