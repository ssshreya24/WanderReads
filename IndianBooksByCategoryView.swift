import SwiftUI

struct IndianBooksByCategoryView: View {
    let categories = [
        ("History", "history"),
        ("Cultural", "culture"),
        ("Monuments", "monuments"),
        ("Itinerary", "itinerary"),
        ("Magazines", "magazines")
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                // Background Image
                Image("india_background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack(spacing: 20) {
                    // Title Section
                    VStack(spacing: 20) {
                        Text("India")
                            .font(.system(size: 90, weight: .bold))
                            .foregroundColor(.white)
                            .shadow(radius: 5)

                        Text("Books by category")
                            .font(.title2)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                    }
                    .padding(.top, 80)

                    Spacer()

                    // Category Buttons
                    VStack(spacing: 20) {
                        ForEach(categories, id: \.0) { category in
                            switch category.0 {
                            case "History":
                                NavigationLink(destination: HistoricalBooksIndiaView()) {
                                    categoryButton(title: category.0)
                                }
                            case "Cultural":
                                NavigationLink(destination: CulturalBooksIndiaView()) {
                                    categoryButton(title: category.0)
                                }
                            case "Monuments":
                                NavigationLink(destination: MonumentsBooksIndiaView()) {
                                    categoryButton(title: category.0)
                                }
                            case "Itinerary":
                                NavigationLink(destination: ItineraryBooksIndiaView()) {
                                    categoryButton(title: category.0)
                                }
                            case "Magazines":
                                NavigationLink(destination: MagazineBooksIndiaView()) {
                                    categoryButton(title: category.0)
                                }
                            default:
                                categoryButton(title: category.0)
                            }
                        }
                    }

                    Spacer()
                }
            }
        }
    }

    // Reusable button style
    @ViewBuilder
    func categoryButton(title: String) -> some View {
        Text(title)
            .font(.title3)
            .bold()
            .frame(width: 300, height: 55)
            .background(Color.brown.opacity(0.70))
            .cornerRadius(20)
            .foregroundColor(.white)
            .shadow(radius: 50)
    }
}

#Preview {
    IndianBooksByCategoryView()
}
