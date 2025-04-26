import SwiftUI

struct GreeceBooksByCategoryView: View {
    let categories = ["History", "Cultural", "Monuments", "Itinerary"]

    var body: some View {
        NavigationStack {
            ZStack {
                // Background Image
                Image("greece_background") // 📸 Add this image to your Assets
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.2)) // Light overlay for better readability

                VStack(spacing: 20) {
                    // Title Section
                    VStack(spacing: 10) {
                        Text("Greece")
                            .font(.system(size: 90, weight: .bold))
                            .foregroundColor(.white)
                            .shadow(radius: 10)

                        Text("Books by category")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                    }
                    .padding(.top, 80)

                    Spacer()

                    // Category Buttons
                    VStack(spacing: 20) {
                        ForEach(categories, id: \.self) { category in
                            switch category {
                            case "History":
                                NavigationLink(destination: HistoricalBooksGreeceView()) {
                                    categoryButton(title: category)
                                }
                            case "Cultural":
                                NavigationLink(destination: CulturalBooksGreeceView()) {
                                    categoryButton(title: category)
                                }
                            case "Monuments":
                                NavigationLink(destination: MonumentsBooksGreeceView()) {
                                    categoryButton(title: category)
                                }
                            case "Itinerary":
                                NavigationLink(destination: ItineraryBooksGreeceView()) {
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

    // Styled Category Button
    @ViewBuilder
    func categoryButton(title: String) -> some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .frame(width: 300, height: 55)
            .background(Color(red: 1.0, green: 0.95, blue: 0.85)) // Light creamy white
            .cornerRadius(20)
            .foregroundColor(Color(red: 150/255, green: 75/255, blue: 0/255)) // Warm brown text
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 4)
    }
}

#Preview {
    GreeceBooksByCategoryView()
}
