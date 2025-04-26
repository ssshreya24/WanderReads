import SwiftUI

struct DubaiBooksByCategoryView: View {
    let categories = ["History", "Cultural", "Monuments", "Itinerary"]

    var body: some View {
        NavigationStack {
            ZStack {
                // 🏙️ Background Image
                Image("dubai_background") // Make sure this is added to Assets
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.3))

                VStack(spacing: 20) {
                    // 🌆 Title Section
                    VStack(spacing: 10) {
                        Text("Dubai")
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

                    // 📚 Category Buttons
                    VStack(spacing: 20) {
                        ForEach(categories, id: \.self) { category in
                            switch category {
                            case "History":
                                NavigationLink(destination: HistoricalBooksDubaiView()) {
                                    categoryButton(title: category)
                                }
                            case "Cultural":
                                NavigationLink(destination: CulturalBooksDubaiView()) {
                                    categoryButton(title: category)
                                }
                            case "Monuments":
                                NavigationLink(destination: MonumentsBooksDubaiView()) {
                                    categoryButton(title: category)
                                }
                            case "Itinerary":
                                NavigationLink(destination: ItineraryBooksDubaiView()) {
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
            .foregroundColor(Color(red: 88/255, green: 30/255, blue: 13/255))
            .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 5)
    }
}

#Preview {
    DubaiBooksByCategoryView()
}
