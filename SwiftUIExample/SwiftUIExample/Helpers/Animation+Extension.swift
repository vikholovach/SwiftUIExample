//
//  Animation+Extension.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 08.09.2023.
//

import SwiftUI

extension Animation {
    static func ripple(_ index: Int) -> Animation {
        Animation.spring(dampingFraction: 0.5)
            .speed(2)
            .delay(0.03 * Double(index))
    }
}
