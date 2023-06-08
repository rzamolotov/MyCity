//
//  MapViewModel.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import Foundation
import SwiftUI
import MapKit

struct MapViewModel: UIViewRepresentable {
    let sourceCoordinate = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194) // Координаты отправной точки
    let destinationCoordinate = CLLocationCoordinate2D(latitude: 37.3352, longitude: -122.0096) // Координаты конечной точки
    let intermediateCoordinates: [CLLocationCoordinate2D] = [
        CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4195),
        CLLocationCoordinate2D(latitude: 37.7750, longitude: -122.4196),
        // Добавьте промежуточные координаты здесь
    ]
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let sourcePlacemark = MKPlacemark(coordinate: sourceCoordinate)
        let destinationPlacemark = MKPlacemark(coordinate: destinationCoordinate)
        
        let sourceItem = MKMapItem(placemark: sourcePlacemark)
        let destinationItem = MKMapItem(placemark: destinationPlacemark)
        
        var waypoints: [MKMapItem] = []
        
        for coordinate in intermediateCoordinates {
            let intermediatePlacemark = MKPlacemark(coordinate: coordinate)
            let intermediateItem = MKMapItem(placemark: intermediatePlacemark)
            waypoints.append(intermediateItem)
        }
        
        calculateRoute(source: sourceItem, destination: destinationItem, waypoints: waypoints) { response, error in
            guard let route = response?.routes.first else {
                if let error = error {
                    print("Ошибка при построении маршрута: \(error.localizedDescription)")
                //TODO: - сделать алерт с ошибкой 
                }
                return
            }
            
            uiView.addOverlay(route.polyline, level: .aboveRoads)
            uiView.setVisibleMapRect(route.polyline.boundingMapRect, animated: true)
            
            print("Время пути: \(route.expectedTravelTime / 60) минут") // Время пути в минутах
        }
        
        uiView.delegate = context.coordinator
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            if overlay is MKPolyline {
                let renderer = MKPolylineRenderer(overlay: overlay)
                renderer.strokeColor = .blue
                renderer.lineWidth = 5
                return renderer
            }
            
            return MKOverlayRenderer(overlay: overlay)
        }
    }
    
    private func calculateRoute(source: MKMapItem, destination: MKMapItem, waypoints: [MKMapItem], completion: @escaping (MKDirections.Response?, Error?) -> Void) {
        let directionsRequest = MKDirections.Request()
        directionsRequest.source = source
        directionsRequest.destination = destination
        
        var waypointsMapItems: [MKMapItem] = []
        for waypoint in waypoints {
            waypointsMapItems.append(waypoint)
        }
        
        directionsRequest.transportType = .automobile
        directionsRequest.requestsAlternateRoutes = false
        
        let directions = MKDirections(request: directionsRequest)
        directions.calculate { response, error in
            completion(response, error)
        }
    }
}
