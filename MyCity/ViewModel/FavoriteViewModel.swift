//
//  FavoriteViewModel.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import Foundation
import Combine

class FavoriteViewMoidel: ObservableObject {
    
    @Published var isAddToRoute: Bool
    @Published var isAddToFavorite: Bool
    
    init() {
        self.isAddToRoute = false
        self.isAddToFavorite = false
    }
 
    
}
