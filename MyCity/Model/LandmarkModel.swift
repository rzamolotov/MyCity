//
//  LandmarkModel.swift
//  MyCity
//
//  Created by Роман Замолотов on 05.06.2023.
//

import Foundation
import MapKit

struct Landmark: Identifiable, Codable {
    let id: String
    let latitude: Double
    let longitude: Double
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
    
    var location: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
