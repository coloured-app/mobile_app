//
//  ScaledButtonStyle.swift
//  coloured-app
//
//  Created by Максим Кузнецов on 05.10.2024.
//

#if !SKIP
import SwiftUI

struct ScaledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(Animation.easeInOut, value: configuration.isPressed)
    }
}
#endif
