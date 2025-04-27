import Foundation

enum TransactionType: String, CaseIterable, Identifiable, Codable {
    case income, expense
    var id: String { self.rawValue }
}

struct Transaction: Identifiable, Codable {
    let id: UUID
    let date: Date
    let amount: Double
    let type: TransactionType
    let category: Category
    let note: String?
    let photo: Data? // Optional image
    let currency: String // e.g., "INR"
    let isRecurring: Bool
} 