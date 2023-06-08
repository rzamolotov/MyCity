//
//  FavoriteViewModel.swift
//  MyCity
//
//  Created by Роман Замолотов on 08.06.2023.
//

import Foundation
import Combine
import SwiftUI

class FavoriteViewMoidel: ObservableObject {
    
    
    @AppStorage("ISADDTOROUTE") var isAddToRoute: Bool = false
    @AppStorage("ISADDTOFAVORITE") var isAddToFavorite: Bool = false
    
    init() {
        print("item is add to route \(isAddToRoute)")
        print("item is add to favorite \(isAddToFavorite)")
    }
}
