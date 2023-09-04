//
//  LandmarkList.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 04.09.2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRowView(
                landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
