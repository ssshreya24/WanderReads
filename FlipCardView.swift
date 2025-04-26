import SwiftUI
import Foundation // (optional, not compulsory)

struct FlipCardView: View {
    let book: Book  // ✅ now no confusion

    @State private var isFlipped = false

    var body: some View {
        VStack(spacing: 16) {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.clear)
                    .frame(height: 420)

                if isFlipped {
                    // Back: Description
                    ScrollView {
                        VStack(spacing: 8) {
                            Text(book.title)
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .lineLimit(2)
                                .minimumScaleFactor(0.7)

                            Text(book.description)
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white.opacity(0.9))
                                .padding(.horizontal)

                            Text("by \(book.author)")
                                .font(.footnote)
                                .italic()
                                .foregroundColor(.white.opacity(0.8))
                        }
                        .padding()
                    }
                    .frame(width: 300, height: 400)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                } else {
                    // Front: Book Cover
                    VStack(spacing: 8) {
                        Image(book.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 220, height: 300)
                            .cornerRadius(15)

                        Text(book.title)
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                    }
                    .frame(width: 300, height: 400)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                }
            }
            .onTapGesture {
                withAnimation(.spring()) {
                    isFlipped.toggle()
                }
            }
        }
    }
}

#Preview {
    FlipCardView(book: Book(
        title: "Sample Title",
        author: "Author",
        imageName: "sample_image",
        description: "Sample book description."
    ))
}//
//  FlipCardView.swift
//  WanderReads
//
//  Created by Shreya Singh on 26/04/25.
//

