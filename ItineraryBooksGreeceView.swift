import SwiftUI

struct ItineraryBooksGreeceView: View {
    let books: [Book] = [
        Book(
            title: "Greece Travel Guide 2024",
            author: "Alice D. Morales",
            imageName: "greece_itinerary1", // 📌 Make sure you added this image to Assets
            description: "Your comprehensive Greek vacation planner covering Athens, Santorini, Mykonos, Crete, and more, packed with itineraries, maps, and expert tips."
        ),
        Book(
            title: "10 Days in Greece Itinerary",
            author: "ablissfulwanderer.com",
            imageName: "greece_itinerary2", // 📌 Make sure you added this image to Assets
            description: "An ultimate island-hopping route through Greece’s most stunning destinations with hidden gems and curated local experiences."
        )
    ]

    var body: some View {
        ZStack {
            // 📸 Background Image
            Image("greece_itinerary_bg") // 📌 Add a nice Greece-themed background here
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.5)) // Optional dark overlay for readability

            VStack(spacing: 35) {
                // 📚 Title Section
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 10)

                Text("Itinerary")
                    .font(.system(size: 36, weight: .semibold, design: .serif))
                    .foregroundColor(.white)
                    .shadow(radius: 10)

                // 📖 Flip Card List
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 50) {
                        ForEach(books) { book in
                            FlipCardView(book: book)
                        }
                    }
                    .padding(.bottom, 40)
                }
                .padding(.top, 60)
            }
        }
    }
}

#Preview {
    ItineraryBooksGreeceView()
}
