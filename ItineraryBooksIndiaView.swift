import SwiftUI

struct ItineraryBooksIndiaView: View {
    let books: [Book] = [
        Book(
            title: "Lonely Planet: India",
            author: "Lonely Planet",
            imageName: "itinerary1",
            description: "An extensive travel guide covering India’s rich experiences, local secrets, and planning advice. Ideal for all kinds of travelers exploring India."
        ),
        Book(
            title: "Backpacking India on a Budget",
            author: "The Broke Backpacker",
            imageName: "itinerary2",
            description: "A complete guide for budget travelers looking to explore India’s diversity without burning a hole in their wallet. Filled with practical tips and hacks."
        )
    ]
    
    var body: some View {
        ZStack {
            Image("india_itinerary_bg") // 🌄 Your chosen background
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                Color.black.opacity(0.3)
                .ignoresSafeArea()

            VStack(spacing: 25) {
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white) // More visible on bright background
                    .shadow(color: .white.opacity(0.6), radius: 4)

                Text("Itinerary")
                    .font(.system(size: 36, weight:
                            .semibold, design: .serif))
                    .foregroundColor(.white)
                        .shadow(color: .white.opacity(0.5), radius: 3)
                
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
    ItineraryBooksIndiaView()
}
