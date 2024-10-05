//
//  CardView.swift
//  coloured-app
//
//  Created by Максим Кузнецов on 04.10.2024.
//

import SwiftUI

struct CardView: View {
    @State var model: CardModel
    var action: (() -> Void)?
    
    var body: some View {
        Button {
            action?()
        } label: {
            content
        }
        #if !SKIP
        .buttonStyle(ScaledButtonStyle())
        #endif
    }
    
    private var content: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Label(
                    model.type.rawValue,
                    systemImage: getSystemImage(by: model.type)
                )
                .font(.caption)
                .foregroundStyle(.white)
                Spacer()
                Button {
                    withAnimation {
                        model.isLiked = !model.isLiked
                    }
                } label: {
                    Image(systemName: model.isLiked ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                        .padding(8)
                        .foregroundStyle(model.isLiked ? .red : .white)
                        .background(Color.primary.opacity(0.5))
                        .clipShape(Circle())
                }
                #if !SKIP
                .contentTransition(.symbolEffect(.automatic))
                #endif
            }
            Spacer()
            VStack(alignment: .leading) {
                Text(model.title)
                    .font(.title.bold())
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.leading)
                Text("Автор: \(model.authorName)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            }
        }
        .padding()
        .background(Color.teal)
        .clipShape(RoundedRectangle(cornerRadius: 20.0))
    }
    
    func getSystemImage(by type: CardModel.CardType) -> String {
        switch type {
        case .article:
            "newspaper"
        case .event:
            "calendar"
        case .post:
            "list.clipboard"
        }
    }
}
