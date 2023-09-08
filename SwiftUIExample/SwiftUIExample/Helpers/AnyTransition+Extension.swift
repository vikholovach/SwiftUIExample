//
//  AnyTransition+Extension.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 08.09.2023.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .scale.combined(with: .move(edge: .leading)),
            removal: .scale.combined(with: .move(edge: .trailing)))
    }
}
