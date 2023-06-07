//
//  ContentView.swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
