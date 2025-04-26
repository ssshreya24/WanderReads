import SwiftUI

struct CulturalBooksIndiaView: View {
    let books: [Book] = [
        Book(
            title: "Indian Culture and Heritage",
            author: "Dr. Binod Bihari Satpathy",
            imageName: "culture1", // Make sure this image is in Assets
            description: "An insightful account of India’s cultural evolution, traditions, and heritage through the ages. This book reflects on philosophy, rituals, and spiritual practices that shape Indian identity."
        ),
        Book(
            title: "Indian Culture for Everyone",
            author: "Shobita Punja",
            imageName: "culture2", // Make sure this image is in Assets
            description: "A beautifully illustrated narrative about India’s traditions, values, and artistic expressions, crafted for all readers to understand and cherish India’s cultural legacy."
        )
    ]

    var body: some View {
        ZStack {
            Image("india_cultural_bg") // ✅ Set your cultural BG image here
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.8)

            VStack(spacing: 35) {
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 88/255, green: 30/255, blue: 13/255))

                Text("Culture")
                    .font(.system(size: 36, weight: .semibold, design: .serif))
                    .foregroundColor(Color(red: 88/255, green: 30/255, blue: 13/255))

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
    CulturalBooksIndiaView()
}
