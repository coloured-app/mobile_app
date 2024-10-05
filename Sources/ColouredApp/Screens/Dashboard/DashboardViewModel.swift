//
//  DashboardViewModel.swift
//  coloured-app
//
//  Created by Максим Кузнецов on 05.10.2024.
//

import SwiftUI

@Observable
final class DashboardViewModel {
    let cards: [CardModel] = [
        CardModel(id: 0, type: .article, authorName: "John", title: "Brand new atricle", isLiked: false),
        CardModel(id: 1, type: .event, authorName: "John", title: "Brand new event", isLiked: true),
        CardModel(id: 2, type: .post, authorName: "John", title: "Brand new post", isLiked: true),
        CardModel(id: 3, type: .post, authorName: "John", title: "Brand new post", isLiked: true),
        CardModel(id: 4, type: .post, authorName: "John", title: "Brand new post", isLiked: true),
    ]
}
