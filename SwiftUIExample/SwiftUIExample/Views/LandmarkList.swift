//
//  LandmarkList.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 04.09.2023.
//

import SwiftUI



struct LandmarkList: View {
    
    
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: {
                    //destination -> View on which we want to jump in
                    LandmarkDetailView(landmark: landmark)
                }, label: {
                    //view which we want to show in list
                    LandmarkRowView(
                        landmark: landmark)
                })
                
            }
            .navigationTitle("Landmarks")
             
        }
      
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

