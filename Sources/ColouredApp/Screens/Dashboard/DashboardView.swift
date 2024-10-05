import SwiftUI

public struct DashboardView: View {
    @Environment(DashboardViewModel.self) private var viewModel
    @State var textToSearch: String = ""
    
    public var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(viewModel.cards) { cardModel in
                        CardView(model: cardModel)
                            .frame(height: 200)
                    }
                }
                .padding()
            }
            #if !SKIP
            .scrollIndicators(.hidden)
            #endif
            .navigationTitle("_coloured.")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    DashboardView()
}
