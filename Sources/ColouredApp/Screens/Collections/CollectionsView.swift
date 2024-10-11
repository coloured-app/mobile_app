//
//  CollectionsView.swift
//  coloured-app
//
//  Created by Максим Кузнецов on 11.10.2024.
//

import SwiftUI

struct CollectionsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
            }
            #if !SKIP
            .scrollIndicators(.hidden)
            #endif
            .navigationTitle("Коллекции")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    CollectionsView()
}
