//
//  MapSearchViewModel.swift
//  MyCity
//
//  Created by Роман Замолотов on 21.06.2023.
//

import Foundation
import MapKit
import SwiftUI

class MapSearchingViewModel: ObservableObject {
    @Published var annotations = [MKPointAnnotation]()
    @Published var isSearching = false
    
    func performSearch(query: String) {
        self.isSearching = true
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = query
        
        let localSearch = MKLocalSearch(request: request)
        localSearch.start { (resp, err) in
            // handle your error
            
            var airportAnnotations = [MKPointAnnotation]()
            
            resp?.mapItems.forEach({ (mapItem) in
                print(mapItem.name ?? "")
                let annotation = MKPointAnnotation()
                annotation.title = mapItem.name
                annotation.coordinate = mapItem.placemark.coordinate
                airportAnnotations.append(annotation)
            })
            
            self.annotations = airportAnnotations
            self.isSearching = false
        }
    }
}
