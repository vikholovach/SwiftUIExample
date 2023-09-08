//
//  RotateBageView.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 08.09.2023.
//

import SwiftUI

struct RotateBageView: View {
    let angle: Angle
      
      var body: some View {
          BageSymbol()
              .padding(-60)
              .rotationEffect(angle, anchor: .bottom)
      }
}

struct RotateBageView_Previews: PreviewProvider {
    static var previews: some View {
        RotateBageView(angle: Angle(degrees: 5))
    }
}
