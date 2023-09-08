//
//  Badge.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 08.09.2023.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
            ForEach(0..<8) { index in
                RotateBageView(
                    angle: .degrees(Double(index) / Double(8)) * 360.0
                )
            }
            .opacity(0.5)
        }
        
        var body: some View {
            ZStack {
                BadgeBackgroundView()
                
                GeometryReader { geometry in
                    badgeSymbols
                        .scaleEffect(1.0 / 4.0, anchor: .top)
                        .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
                }
            }
            .scaledToFit()
        }
    }

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
