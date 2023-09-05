//
//  LoaderView.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 05.09.2023.
//

import SwiftUI

struct LoaderView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(Color.blue, lineWidth: 4)
            .frame(width: 50, height: 50)
            .rotationEffect(.degrees(
                isAnimating
                ? 360
                : 0))
            .onAppear() {
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                    isAnimating = true
                }
            }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}
