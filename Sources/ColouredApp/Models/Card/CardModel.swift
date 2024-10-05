//
//  CardModel.swift
//  coloured-app
//
//  Created by Максим Кузнецов on 04.10.2024.
//

import Foundation

struct CardModel: Identifiable {
    var id: Int
    var type: CardType
    var authorName: String
    var title: String
    var isLiked: Bool
    
    enum CardType: String {
        case article = "СТАТЬЯ"
        case event = "МЕРОПРИЯТИЕ"
        case post = "ПОСТ"
    }
}
