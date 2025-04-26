import SwiftUI

struct MonumentsBooksGreeceView: View {
    let books: [Book] = [
        Book(
            title: "Seven Wonders of Ancient Greece",
            author: "Michael Woods and Mary B. Woods",
            imageName: "greece_monument1", // First book image added in Assets
            description: "Discover the fascinating seven wonders that shaped Ancient Greece, from mythical architecture to cultural marvels."
        ),
        Book(
            title: "Shadows of the Acropolis",
            author: "Richard C. Lyons",
            imageName: "greece_monument2", // Second book image added in Assets
            description: "A deep dive into the rich history and legendary monuments surrounding the Acropolis of Athens."
        )
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // 🏛️ Background related to Greek monuments
                Image("greece_monuments_bg") // Add a beautiful Greece-themed background image
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.5)) // Soft dark overlay for readability

                VStack(spacing: 35) {
                    Text("Books")
                        .font(.custom("Snell Roundhand", size: 70))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                    
                    Text("Monuments")
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
            }
        }
    }
}



#Preview {
    MonumentsBooksGreeceView()
}
