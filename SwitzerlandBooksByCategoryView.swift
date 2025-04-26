import SwiftUI

struct SwitzerlandBooksByCategoryView: View {
    let categories = ["History", "Cultural", "Monuments", "Itinerary"]

    var body: some View {
        NavigationStack {
            ZStack {
                // 🏔️ Background Image (Add to Assets)
                Image("switzerland_background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.3)) // dark overlay for readability

                VStack(spacing: 20) {
                    // 🧭 Title Section
                    VStack(spacing: 10) {
                        Text("Switzerland")
                            .font(.system(size: 70, weight: .bold))
                            .foregroundColor(.white)
                            .shadow(radius: 10)

                        Text("Books by category")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                    }
                    .padding(.top, 80)

                    Spacer()

                    // 📚 Category Buttons
                    VStack(spacing: 20) {
                        ForEach(categories, id: \.self) { category in
                            switch category {
                            case "History":
                                NavigationLink(destination: HistoricalBooksSwitzerlandView()) {
                                    categoryButton(title: category)
                                }
                            case "Cultural":
                                NavigationLink(destination: CulturalBooksSwitzerlandView()) {
                                    categoryButton(title: category)
                                }
                            case "Monuments":
                                NavigationLink(destination: MonumentsBooksSwitzerlandView()) {
                                    categoryButton(title: category)
                                }
                            case "Itinerary":
                                NavigationLink(destination: ItineraryBooksSwitzerlandView()) {
                                    categoryButton(title: category)
                                }
                            default:
                                categoryButton(title: category)
                            }
                        }
                    }

                    Spacer()
                }
            }
        }
    }

    // 📦 Styled Button Component
    @ViewBuilder
    func categoryButton(title: String) -> some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .frame(width: 300, height: 55)
            .background(Color.white.opacity(0.8))
            .cornerRadius(20)
            .foregroundColor(Color(red: 0.25, green: 0.3, blue: 0.15)) // earthy alpine tone
            .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 5)
    }
}

#Preview {
    SwitzerlandBooksByCategoryView()
}
