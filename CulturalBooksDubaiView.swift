import SwiftUI

struct CulturalBooksDubaiView: View {
    let books: [Book] = [
        Book(
            title: "Dubai Handbook: How to Survive and Succeed in One of the Most Dynamic Cities in the World",
            author: "—",
            imageName: "dubai_culture1", // 🟡 Add this image to your Assets
            description: "This book serves as a practical and cultural guide to navigate life, business, and travel in Dubai with confidence."
        ),
        Book(
            title: "Cultural Explorer – Visit Dubai",
            author: "Dubai Tourism",
            imageName: "dubai_culture2", // 🟡 Add this image to your Assets
            description: "An illustrated cultural guide highlighting Dubai's historical landmarks, traditional values, and authentic experiences."
        )
    ]

    var body: some View {
        ZStack {
            // 📸 Background Image
            Image("dubai_cultural_bg") // 🟡 Use a subtle background representing Dubai
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.3)) // Optional: makes content more readable

            VStack(spacing: 35) {
                // 📚 Title Section
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("Cultural")
                    .font(.system(size: 36, weight: .semibold, design: .serif))
                    .foregroundColor(.white)

                // 📖 Book Flip Cards
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
    CulturalBooksDubaiView()
}
