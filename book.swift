import Foundation

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let imageName: String
    let description: String
}
