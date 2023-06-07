//
//  ExternalWebLinkView.swift
//  MyCity
//
//  Created by Роман Замолотов on 03.06.2023.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let landmark: Landmark

    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Википедия")
                Spacer()
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(landmark.name, destination: (URL(string: landmark.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let landmarks: [Landmark] = Bundle.main.decode("sevastopol.json")
    static var previews: some View {
        ExternalWebLinkView(landmark: landmarks[0])
    }
}
