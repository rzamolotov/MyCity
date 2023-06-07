//
//  InsetMapView.swift
//  MyCity
//
//  Created by Роман Замолотов on 03.06.2023.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.3082, longitude: 34.6491), span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0))
    
    
    let landmark: Landmark
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)

            NavigationLink(destination: MapView()) {
                HStack{
                    Image(systemName: "mappin.circle")
                        .foregroundColor(.white)
                        .imageScale(.large)
                    Text("Посмотреть на карте")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 14)
                .background(
                    Color.black
                        .opacity(0.4)
                        .cornerRadius(8)
                )
            }
            .padding(12)
            
        }
        .frame(height: 256)
        .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    
    static let landmarks: [Landmark] = Bundle.main.decode("sevastopol.json")
    
    static var previews: some View {
        InsetMapView(landmark: landmarks[0])
    }
}
