import SwiftUI

struct CulturalBooksSwitzerlandView: View {
    let books: [Book] = [
        Book(
            title: "Beyond Chocolate: Understanding Swiss Culture",
            author: "Margaret Oertig-Davidson",
            imageName: "swiss_culture1", // ✅ Add to Assets
            description: "A witty, insightful guide that reveals the hidden rules of Swiss culture, offering newcomers essential advice for navigating everyday life in Switzerland."
        ),
        Book(
            title: "Switzerland – Culture Smart!: The Essential Guide to Customs & Culture",
            author: "Kendall Hunter",
            imageName: "swiss_culture2", // ✅ Add to Assets
            description: "An engaging introduction to Switzerland's customs, etiquette, and cultural nuances, tailored for travelers and expats alike."
        )
    ]

    var body: some View {
        ZStack {
            Image("switzerland_cultural_bg") // ✅ Add background to Assets
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.3)) // For contrast

            VStack(spacing: 35) {
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("Cultural")
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
    CulturalBooksSwitzerlandView()
}
