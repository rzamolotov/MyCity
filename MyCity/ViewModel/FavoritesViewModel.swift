//
//  FavoritesViewModel.swift
//  MyCity
//
//  Created by Роман Замолотов on 10.06.2023.
//

import Foundation
import SwiftUI

class FavoritesViewModel: ObservableObject {
    @Published var landmarksFavorite = [Landmark]()
    @Published var showingFavorites = false
    @Published var savedItems: Set<Int> = [1, 2]
    
    var filteredFavorites: [Landmark] {
        if showingFavorites {
            return landmarksFavorite.filter { savedItems.contains($0.id) }
        } else {
            return landmarksFavorite
        }
    }
    private var db = FavoriteDataBase()
    
    init() {
        self.savedItems = db.load()
    }
    
    func sortFavorites() {
        withAnimation {
            showingFavorites.toggle()
        }
    }
    
    func contains(_ landmarksFavorite: Landmark) -> Bool {
        savedItems.contains(landmarksFavorite.id)
    }
    
    func toggleFavorite(landmarksFavorite: Landmark) {
        if contains(landmarksFavorite) {
            savedItems.remove(landmarksFavorite.id)
        } else {
            savedItems.insert(landmarksFavorite.id)
        }
        db.save(landmarksFavorite: savedItems)
    }
}
