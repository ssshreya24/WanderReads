import SwiftUI

struct HistoricalBooksSwitzerlandView: View {
    let books: [Book] = [
        Book(
            title: "The History of Switzerland, for the Swiss People",
            author: "Heinrich Zschokke, Francis George Shaw, Emil Zschokke",
            imageName: "swiss_history1", // Replace with your asset name
            description: "A primary source edition offering a deep dive into the historical evolution of Switzerland as narrated for its citizens. A classic and educational account."
        ),
        Book(
            title: "A Concise History of Switzerland",
            author: "Clive H. Church, Randolph C. Head",
            imageName: "swiss_history2", // Replace with your asset name
            description: "A modern and authoritative overview of Swiss history, covering political, cultural, and economic aspects from the Middle Ages to present-day Switzerland."
        )
    ]

    var body: some View {
        ZStack {
            Image("switzerland_history_bg") // Ensure this background image is in Assets
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.3)) // Better readability

            VStack(spacing: 35) {
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("History")
                    .font(.system(size: 36, weight: .semibold, design: .serif))
                    .foregroundColor(.white)

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 50) {
                        ForEach(books) { book in
                            FlipCardView(book: book)
                        }
                    }
                    .padding(.bottom, 40)
                }
            }
            .padding(.top, 60)
        }
    }
}

#Preview {
    HistoricalBooksSwitzerlandView()
}
