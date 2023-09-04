//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 04.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                 Text("Turtle Rock")
                    .font(.title)
                
                HStack(alignment: .center) {
                    Text("Joshua Tree National Park")
                    
                    Spacer()
                    
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Description text goes here")
            }
            .padding(.horizontal, 16.0)
            
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
