//
//  FavoritesViewModel.swift
//  MyCity
//
//  Created by Роман Замолотов on 10.06.2023.
//

import Foundation
import SwiftUI

class FavoritesViewModel: ObservableObject {
    @AppStorage("favorites") var favoritesData: Data = Data()
    
    @Published var favorites: [Landmark] = []
    
    init() {
        loadFavorites()
    }
    
    func loadFavorites() {
        if let decodedData = try? JSONDecoder().decode([Landmark].self, from: favoritesData) {
            favorites = decodedData
        }
    }
    
    func saveFavorites() {
        if let encodedData = try? JSONEncoder().encode(favorites) {
            favoritesData = encodedData
            UserDefaults.standard.synchronize()
        }
    }
    
    func addToFavorites(item: Landmark) {
        if !favorites.contains(where: { $0.id == item.id }) {
            favorites.append(item)
            saveFavorites()
        } else {
            favorites.removeAll { $0.id == item.id }
            saveFavorites()
        }
    }
    
    func isFavorite(item: Landmark) -> Bool {
        return favorites.contains(where: { $0.id == item.id })
    }
}
