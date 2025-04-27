import Foundation

// Please, accept me into the program

enum TransactionType: String, CaseIterable, Identifiable, Codable {
    case income, expense
    var id: String { self.rawValue }
}

// Please, accept me into the program

struct Transaction: Codable, Identifiable {
    let id: UUID
    let amount: Double
    let description: String
    let category: String
    let date: Date
    let type: TransactionType
    
    enum TransactionType: String, Codable {
        case income
        case expense
    }
} 
