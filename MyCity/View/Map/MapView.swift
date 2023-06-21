//
//  MapView().swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import SwiftUI
import MapKit

struct MapView: View {

    @ObservedObject var mapSearchingVM = MapSearchingViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            MapViewContainer(annotations: mapSearchingVM.annotations)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                if mapSearchingVM.isSearching {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.black)
                            .opacity(0.4)
                            .frame(width: screen.width / 2, height: screen.height / 12)
                            .cornerRadius(10)
                        VStack {
                            Text("Ищем варианты")
                                .foregroundColor(.white)
                                .font(.custom(boldFont, size: fontSizeMedium))
                            ProgressView()
                                .foregroundColor(.white)
                                .font(.title)
                        }
                            
                    }
                }
                    Spacer()
                ScrollView(.horizontal) {
                    HStack(spacing: 5) {
                        Button {
                            self.mapSearchingVM.performSearch(query: "Аэропорт")
                            
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: screen.width / 3, height: screen.height / 12)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                    .shadow(radius: 2)
                                Text("Аэропорты")
                                    .foregroundColor(.accentColor)
                                    .font(.custom(boldFont, size: fontSizeMedium))
                                
                            }
                        }
                        Button {
                            self.mapSearchingVM.performSearch(query: "Пляж")
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: screen.width / 3, height: screen.height / 12)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                    .shadow(radius: 2)
                                Text("Пляжи")
                                    .foregroundColor(.accentColor)
                                    .font(.custom(boldFont, size: fontSizeMedium))
                                
                            }
                        }
                        Button {
                            self.mapSearchingVM.performSearch(query: "кафе")
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: screen.width / 3, height: screen.height / 12)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                    .shadow(radius: 2)
                                Text("Кафе")
                                    .foregroundColor(.accentColor)
                                    .font(.custom(boldFont, size: fontSizeMedium))
                                
                            }
                        }
                        Button {
                            self.mapSearchingVM.annotations = []
                        } label: {
                            ZStack {
                                Rectangle()
                                    .frame(width: screen.width / 3, height: screen.height / 12)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                    .shadow(radius: 2)
                                Text("Удалить все")
                                    .foregroundColor(.accentColor)
                                    .font(.custom(boldFont, size: fontSizeMedium))
                                
                            }
                        }
                    }
                }
            }
        }
    }
  
}

struct MapView_Previews: PreviewProvider {

    static var previews: some View {
        MapView()
    }
}
