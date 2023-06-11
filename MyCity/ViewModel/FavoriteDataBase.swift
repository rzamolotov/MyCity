//
//  FavoriteViewModel.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import Foundation

class FavoriteDataBase {
    private let favoriteKey = "FAVORTES"
    
    func save(landmarksFavorite: Set<Int>) {
        let array = Array(landmarksFavorite)
        UserDefaults.standard.set(array, forKey: favoriteKey)
    }
    
    func load() -> Set<Int> {
        let array = UserDefaults.standard.array(forKey: favoriteKey) as? [Int] ?? [Int]()
        return Set(array)
    }
}
