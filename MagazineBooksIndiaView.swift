import SwiftUI

struct MagazineBooksIndiaView: View {
    let books: [Book] = [
        Book(
            title: "India Today - Budget 2025",
            author: "India Today",
            imageName: "magazine1",
            description: "A sharp and timely analysis of India's 2025 Union Budget. This edition explores the implications of tax cuts, economic reforms, and how the government plans to push for growth in the coming fiscal year."
        ),
        Book(
            title: "Forbes India - Women and Entrepreneurship",
            author: "Forbes India",
            imageName: "magazine2",
            description: "This issue highlights inspiring journeys of women founders across India. Featuring stories of innovation, resilience, and empowerment, it celebrates the voices transforming the startup ecosystem."
        )
    ]

    var body: some View {
        ZStack {
            Image("india_magazine_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.77)

            VStack(spacing: 35) {
                Text("Books")
                    .font(.custom("Snell Roundhand", size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 40/255, green: 20/255, blue: 20/255))

                Text("Magazines")
                    .font(.system(size: 36, weight: .semibold, design: .serif))
                    .foregroundColor(Color(red: 40/255, green: 20/255, blue: 20/255))

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
    MagazineBooksIndiaView()
}

