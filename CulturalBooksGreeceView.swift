import SwiftUI

struct CulturalBooksGreeceView: View {
    let books: [Book] = [
        Book(
            title: "Classical Humanities: Ancient Greece and Rome",
            author: "Sean E. Lake & Patrick G. Lake",
            imageName: "greece_culture1", // ✅ Make sure you add the correct image in Assets
            description: "A comprehensive survey covering the literature, art, and culture of Ancient Greece and Rome."
        ),
        Book(
            title: "The Ancient Greeks: Ten Ways They Shaped the Modern World",
            author: "Edith Hall",
            imageName: "greece_culture2", // ✅ Make sure you add the correct image in Assets
            description: "A fascinating exploration of how ancient Greek ideas still influence the modern world across politics, art, and society."
        )
    ]
    
    var body: some View {
        ZStack {
            // 🌄 Background
            Image("greece_cultural_bg") // ✅ Add a nice cultural background image for Greece
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.5)) // 🔥 To make text pop
            
            VStack(spacing: 35) {
                // 📖 Title Section
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                
                Text("Cultural")
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

#Preview {
    CulturalBooksGreeceView()
}
