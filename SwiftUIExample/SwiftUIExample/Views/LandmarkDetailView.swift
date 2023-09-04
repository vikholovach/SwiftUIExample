//
//  LandmarkDetailView.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 04.09.2023.
//

import SwiftUI

struct LandmarkDetailView: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack(alignment: .center) {
                        Text(landmark.park)
                        
                        Spacer()
                        
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding(.horizontal, 16.0)
                
                Spacer()
            }
        }
//        .ignoresSafeArea(edges: .top)
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarks[0])
    }
}
