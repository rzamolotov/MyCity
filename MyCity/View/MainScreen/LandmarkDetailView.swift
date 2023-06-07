//
//  LandmarkDetailView.swift
//  MyCity
//
//  Created by Роман Замолотов on 07.06.2023.
//

import SwiftUI

struct LandmarkDetailView: View {
    
    let landmark: Landmark
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //Hero image
                Image(landmark.image)
                    .resizable()
                    .scaledToFit()
                //Title
                Text(landmark.name.uppercased())
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                        .frame(height: 6)
                        .offset(y: 24)
                    )
                
            //Headline
                Text(landmark.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Галерея")
                    InsetGalleryView(landmark: landmark)
                }
                .padding(.horizontal)
                
                //Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Инетерсные факты")
                    InsetFactView(landmark: landmark)
                }
                .padding(.horizontal)
                //Description
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "Информация о \(landmark.name)")
                    Text(landmark.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    //map
                    Group {
                        HeadingView(headingImage: "map", headingText: "Найти на карте")
                        
                        InsetMapView(landmark: landmark)
                    }
                    .padding(.horizontal)
                    
                    //link
                    Group{
                        HeadingView(headingImage: "books.vertical", headingText: "Узнать больше")
                        ExternalWebLinkView(landmark: landmark)
                    }
                    .padding(.horizontal)
                }
                .padding(.horizontal)
                
            }
            .navigationBarTitle("\(landmark.name)", displayMode: .inline)
        }
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarks[0])
    }
}
