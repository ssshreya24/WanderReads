import SwiftUI

struct MonumentsBooksSwitzerlandView: View {
    let books: [Book] = [
        Book(
            title: "Culture Smart! Switzerland: A Quick Guide to Customs & Etiquette",
            author: "Culture Smart!",
            imageName: "swissmonument1",
            description: "A practical and informative guide to understanding Swiss culture, covering etiquette, traditions, and societal norms."
        ),
        Book(
            title: "DK Eyewitness Switzerland",
            author: "DK Travel",
            imageName: "swissmonument2", // 📌 Add to Assets
            description: "A visual travel guide that highlights iconic Swiss architecture, scenic spots, and top monuments to visit across the country."
        )
    ]

    var body: some View {
        ZStack {
            Image("switzerland_monuments_bg") 
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.3)) // for readability

            VStack(spacing: 35) {
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("Monuments")
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
    MonumentsBooksSwitzerlandView()
}
