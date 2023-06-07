//
//  Constant.swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import Foundation
import SwiftUI

//UX
let haptic = UIImpactFeedbackGenerator(style: .medium)

//JSON
let landmarks: [Landmark] = Bundle.main.decode("sevastopol.json")

//FONT


//Font Size
let fontSizeVerySmall = screen.height / 70
let fontSizeSmall = screen.height / 60
let fontSizeMedium = screen.height / 50
let fontSizeMediuPlus = screen.height / 40
let fontSizeLarge = screen.height / 30
let fontSizeHuge = screen.height / 20

// LAYOUT
let screen = UIScreen.main.bounds

