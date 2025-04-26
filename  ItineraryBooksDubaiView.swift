import SwiftUI

struct ItineraryBooksDubaiView: View {
    let books: [Book] = [
        Book(
            title: "Dubai in 3 Days",
            author: "Finest City Guides",
            imageName: "dubai_itinerary2", // Add this image to Assets
            description: "The ultimate travel guide for those on a tight schedule, this book helps you make the most of three days in Dubai with detailed itineraries and tips."
        ),
        Book(
            title: "5 Days in Dubai",
            author: "Local Explorer",
            imageName: "dubai_itinerary1", // Add this image to Assets
            description: "A complete five-day plan highlighting Dubai’s iconic attractions, beaches, shopping hubs, and cultural heritage for a memorable stay."
        )
    ]

    var body: some View {
        ZStack {
            Image("dubai_itinerary_bg") // ✅ Background image (add to Assets)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.3))

            VStack(spacing: 35) {
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("Itinerary")
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
    ItineraryBooksDubaiView()
}
