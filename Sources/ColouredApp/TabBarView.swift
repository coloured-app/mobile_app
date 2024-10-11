//
//  TabBarView.swift
//  coloured-app
//
//  Created by Максим Кузнецов on 11.10.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            DashboardView()
                .environment(DashboardViewModel())
                .tabItem { Label("Обзор", systemImage: "text.rectangle.page") }
            
            CollectionsView()
                .tabItem { Label("Коллекции", systemImage: "heart.text.square") }
            
            SettingsView()
                .tabItem { Label("Настройки", systemImage: "gear") }
        }
    }
}
