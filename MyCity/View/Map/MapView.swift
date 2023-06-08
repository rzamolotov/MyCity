//
//  MapView().swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        MapViewModel()
            .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
