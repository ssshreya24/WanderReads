import SwiftUI


struct HistoricalBooksIndiaView: View {
    let books: [Book] = [
        Book(
            title: "Invaders and Infidels: From Sindh to Delhi: The 500-Year Journey of Islamic Invasions",
            author: "Sandeep Balakrishna",
            imageName: "invaders",
            description: "A riveting narrative of the Islamic invasions into India, spanning five centuries. It sheds light on the cultural, political, and military transitions from Sindh to Delhi."
        ),
        Book(
            title: "The Discovery of India",
            author: "Jawaharlal Nehru",
            imageName: "discovery",
            description: "Written during his imprisonment, Nehru explores India’s rich history, philosophy, and culture with personal insights and a profound sense of patriotism."
        )
    ]

    var body: some View {
        ZStack {
            Image("india_book_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.87)

            VStack(spacing: 35) {
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 88/255, green: 30/255, blue: 13/255))
                    

                Text("History")
                    .font(.system(size: 36, weight: .semibold, design: .serif))
                    .foregroundColor(Color(red: 88/255, green: 30/255, blue: 13/255)) // matches the dark maroon tone

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
    HistoricalBooksIndiaView()
}
