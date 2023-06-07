//
//  MainScreenView.swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import SwiftUI

struct MainScreenView: View {
    
    @State private var isGridVieActive = false
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid number \(gridColumn)")
        
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridVieActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(landmarks) { landmark in
                            NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                                ListItemView(landmark: landmark)
                            }
                        }
                    }
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(landmarks) { landmark in
                                NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                                    GridItemView(landmark: landmark)
                                }
                            }
                        }
                        .padding(10)
                        .animation(.easeIn)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Мой Город", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            isGridVieActive = false
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridVieActive ? .primary : .accentColor)
                        }
                       
                        
                        Button {
                            isGridVieActive = true
                            gridSwitch()
                        } label: {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridVieActive ? .accentColor : .primary)
                        }

                    }
                }
            }
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
