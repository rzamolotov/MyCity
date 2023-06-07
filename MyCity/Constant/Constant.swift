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
let blackFont = "Montserrat-Black"
let boldFont = "Montserrat-Bold"
let extraBoldFont = "Montserrat-ExtraBold"
let extraLightFont = "Montserrat-ExtraLight"
let italicFont = "Montserrat-Italic"
let lightFont = "Montserrat-Light"
let mediumFont = "Montserrat-Medium"
let mediumItalicFont = "Montserrat-MediumItalic"
let regularFont = "Montserrat-Regular"
let thinFont = "Montserrat-Thin"
let thinItalicFont = "Montserrat-ThinItalic"

//FONT SIZE
let fontSizeVerySmall = screen.height / 70
let fontSizeSmall = screen.height / 60
let fontSizeMedium = screen.height / 50
let fontSizeMediuPlus = screen.height / 40
let fontSizeLarge = screen.height / 30
let fontSizeHuge = screen.height / 20

// LAYOUT
let screen = UIScreen.main.bounds

