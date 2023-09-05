//
//  LandmarkRowView.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 04.09.2023.
//

import SwiftUI

struct LandmarkRowView: View {
    let landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(
                    width: 60,
                    height:60)
                .clipShape(Circle())
            
            Text(landmark.name)
            Button("Show Coordinates", action: {
                print(landmark.locationCoordinate)
            })
            //in order to make button tappable we need to add .borderless to the button. it wil allow us to use button even if list is laying inside in Navigation
            .buttonStyle(.borderless)
            Spacer()
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRowView(
                landmark: landmarks[0])
            .previewLayout(.fixed(
                width: 300,
                height: 70))
            LandmarkRowView(
                landmark: landmarks[1])
            .previewLayout(.fixed(
                width: 300,
                height: 70))
        }
    }
}
