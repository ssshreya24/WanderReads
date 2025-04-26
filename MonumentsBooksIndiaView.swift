
import SwiftUI

struct MonumentsBooksIndiaView: View {
    let books: [Book] = [
        Book(
            title: "Monuments of India",
            author: "Mrinalini Venkateswaran",
            imageName: "monument1", // 📌 Add this image to your Assets
            description: "An informative book detailing India's famous monuments, enriched with historical facts and beautiful sketches. It provides a vivid look into architectural wonders that define India's heritage."
        ),
        Book(
            title: "Tell Me About Monuments of India",
            author: "Scholastic",
            imageName: "monument2", // 📌 Add this image to your Assets
            description: "A visually engaging guide to India's iconic monuments, combining photography with interesting trivia to educate young readers about historical landmarks across the country."
        )
    ]
    
    var body: some View {
        ZStack {
            Image("india_monuments_bg") // 📌 Use the new background image you generated
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
    MonumentsBooksIndiaView()
}
