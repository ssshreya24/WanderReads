import SwiftUI

struct HistoricalBooksGreeceView: View {
    let books: [Book] = [
        Book(
            title: "A Brief History of Ancient Greece",
            author: "Dominic Haynes",
            imageName: "greece_history1",
            description: "A fascinating exploration of the Hellenistic world, its dynasties, mosaics, and cultural evolution."
        ),
        Book(
            title: "Ancient Greece: An Illustrated History",
            author: "Nigel Rodgers",
            imageName: "greece_history2",
            description: "A beautifully illustrated journey through the myths, philosophies, and culture of Ancient Greece."
        )
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // 🏛️ Background related to Greece
                Image("greece_history_bg") // Add a background image if you have one
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.3))
                
                VStack(spacing: 30) {
                    // 📚 Heading
                    VStack(spacing: 10) {
                        Text("Books")
                            .font(.custom("Snell Roundhand", size: 70))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                        
                        Text("History")
                            .font(.system(size: 36, weight: .semibold, design: .serif))
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                    }
                    .padding(.top, 60)
                    
                    // 📖 Book Cards
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 50) {
                            ForEach(books) { book in
                                FlipCardView(book: book)
                            }
                        }
                        .padding(.bottom, 40)
                    }
                    
                    Spacer()
                }
                .padding(.top, 60)
            }
        }
    }
}

// MARK: - Preview
#Preview {
    HistoricalBooksGreeceView()
}
