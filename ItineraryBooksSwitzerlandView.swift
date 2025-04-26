import SwiftUI

struct ItineraryBooksSwitzerlandView: View {
    let books: [Book] = [
        Book(
            title: "The Perfect 9 Days in Switzerland Itinerary",
            author: "shirshendusengupta.com",
            imageName: "switzerland_itinerary1",
            description: "An immersive 9-day itinerary to experience the Swiss Alps, charming villages, and scenic routes. Perfect for first-time visitors."
        ),
        Book(
            title: "Grand Train Tour Of Switzerland - 12 Days Itinerary",
            author: "Echo Rails & Trails",
            imageName: "switzerland_itinerary2",
            description: "Explore Switzerland aboard its legendary trains, visiting Lucerne, St. Moritz, Zermatt, and more on this scenic 12-day tour."
        )
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // 🏔️ Background Image
                Image("switzerland_itinerary_bg") // Add a soft Switzerland-themed background in Assets
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.3))
                
                VStack(spacing: 35) {
                    Text("Books")
                        .font(.custom("Snell Roundhand", size: 70))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                    
                    Text("Itinerary")
                        .font(.system(size: 36, weight: .semibold, design: .serif))
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                    
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
                .padding(.top, 60)
            }
        }
    }
}

#Preview {
    ItineraryBooksSwitzerlandView()
}
