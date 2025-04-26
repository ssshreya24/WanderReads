import SwiftUI

struct MonumentsBooksDubaiView: View {
    let books: [Book] = [
        Book(
            title: "Top 10 Dubai and Abu Dhabi",
            author: "DK Eyewitness",
            imageName: "dubaimonument1", // ✅ Add to Assets
            description: "A curated guide of the top 10 sights and attractions in Dubai and Abu Dhabi. Perfect for planning a short, exciting trip."
        ),
        Book(
            title: "Dubai: Architecture & Design",
            author: "Daab",
            imageName: "dubaimonument2", // ✅ Add to Assets
            description: "An elegant visual exploration of Dubai’s iconic architecture, showcasing the creativity and innovation of its skyline and design."
        )
    ]
    
    var body: some View {
        ZStack {
            Image("dubai_monuments_bg") // ✅ Set a background related to monuments
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay(Color.black.opacity(0.3)) // 🟡 Dim background slightly for better text visibility
            
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
                .padding(.top, 20)
            }
            .padding(.top, 60)
        }
    }
}

#Preview {
    MonumentsBooksDubaiView()
}
