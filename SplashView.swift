import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        if isActive {
            HomeView() 
        } else {
            ZStack {
                // Colorful artistic background
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink, Color.orange, Color.yellow]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                VStack {
                    Spacer()
                    
                    // WanderReads Text
                    Text("WanderReads")
                        .font(.custom("Snell Roundhand", size: 60)) // Calligraphy style
                        .foregroundColor(.white)
                        .shadow(radius: 45)
                        .padding()

                    Spacer()
                    
                    // Small subtext or tagline
                    Text("Travel the world through stories")
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.8))
                        .padding(.bottom, 50)
                }
            }
            .onAppear {
                // Navigate after 2.5 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
