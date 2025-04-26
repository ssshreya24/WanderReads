import SwiftUI

struct HistoricalBooksDubaiView: View {
    let books: [Book] = [
        Book(
            title: "From Trucial States to United Arab Emirates",
            author: "Frauke Heard-Bey",
            imageName: "dubaihistory1", // 📸 Add this to Assets
            description: "A comprehensive history tracing the transformation of the UAE from scattered Trucial States to a united federation. Rich in archival detail and insight into the region's political and cultural evolution."
        ),
        Book(
            title: "Dubai: The Story of the World’s Fastest City",
            author: "Jim Krane",
            imageName: "dubaihistory2", // 📸 Add this to Assets
            description: "An engaging narrative of Dubai's astonishing rise from desert outpost to global hub. A story of vision, ambition, and how one city rewrote its destiny through innovation and bold leadership."
        )
    ]

    var body: some View {
        ZStack {
            Image("dubai_history_bg") // 🌆 Background related to Dubai (already generated earlier)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                Color.black.opacity(0.3)
                .ignoresSafeArea()

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
    HistoricalBooksDubaiView()
}
