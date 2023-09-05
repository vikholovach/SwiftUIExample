//
//  LandmarkList.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 04.09.2023.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    
    //propperty @State should be(or most of the times) be privet
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    Toggle(isOn: $showFavoritesOnly) {
                        Text("Favorites only")
                    }
                    ForEach(filteredLandmarks) { landmark in
                        NavigationLink(destination: {
                            //destination -> View on which we want to jump in
                            LandmarkDetailView(landmark: landmark)
                        }, label: {
                            //view which we want to show in list
                            LandmarkRowView(
                                landmark: landmark)
                        })
                        
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}

