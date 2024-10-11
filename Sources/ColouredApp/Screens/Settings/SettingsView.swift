//
//  SettingsView.swift
//  coloured-app
//
//  Created by Максим Кузнецов on 11.10.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
            }
            #if !SKIP
            .scrollIndicators(.hidden)
            #endif
            .navigationTitle("Настройки")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    SettingsView()
}
