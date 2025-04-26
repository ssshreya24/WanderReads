import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    
    let countries = [
        ("India", "The Pink City, rich in royal history", "india"),
        ("Dubai", "Luxury oasis by the desert", "dubai"),
        ("Switzerland", "Snow-capped serenity & chocolates", "switzerland"),
        ("Greece", "Myths, sunsets & whitewashed towns", "greece")
    ]
    
    var filteredCountries: [(String, String, String)] {
        if searchText.isEmpty {
            return countries
        } else {
            return countries.filter {
                $0.0.localizedCaseInsensitiveContains(searchText) ||
                $0.1.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                
                // Title
                Text("WanderReads")
                    .font(.custom("Snell Roundhand", size: 60))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.pink, .purple, .orange],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .padding(.horizontal)
                
                // Subtitle
                Text("Explore countries through stories.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                // Search Bar
                TextField("Search destinations ...", text: $searchText)
                    .padding(.horizontal)
                    .frame(height: 40)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(12)
                    .font(.subheadline)
                    .padding(.horizontal)
                
                // Scrollable Country Tiles
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(filteredCountries, id: \.0) { country in
                            if country.0 == "India" {
                                NavigationLink(destination: IndianBooksByCategoryView()) {
                                    CountryTile(country: country)
                                }
                                .buttonStyle(PlainButtonStyle())
                            } else if country.0 == "Dubai" {
                                NavigationLink(destination: DubaiBooksByCategoryView()) {
                                    CountryTile(country: country)
                                }
                                .buttonStyle(PlainButtonStyle())
                            } else if country.0 == "Switzerland" {
                                NavigationLink(destination: SwitzerlandBooksByCategoryView()) {
                                    CountryTile(country: country)
                                }
                                .buttonStyle(PlainButtonStyle())
                            } else if country.0 == "Greece" {
                                NavigationLink(destination: GreeceBooksByCategoryView()) {
                                    CountryTile(country: country)
                                }
                                .buttonStyle(PlainButtonStyle())
                            } else {
                                CountryTile(country: country)
                            }
                        }
                    }
                    .padding(.top, 10)
                }
            }
            .background(Color.white)
            .navigationBarHidden(true)
        }
    }
}

// MARK: - Reusable Tile View
struct CountryTile: View {
    let country: (String, String, String)

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(country.2)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 160)
                .frame(maxWidth: .infinity)
                .clipped()
                .cornerRadius(20)

            VStack(alignment: .leading) {
                Text(country.0)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)

                Text(country.1)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.9))
            }
            .padding()
        }
        .padding(.horizontal)
    }
}

#Preview {
    HomeView()
}
