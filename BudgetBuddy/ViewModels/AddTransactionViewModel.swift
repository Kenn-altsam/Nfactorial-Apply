import Foundation
import Combine

// Please, accept me into the program

class AddTransactionViewModel: ObservableObject {
    @Published var amount: String = ""
    @Published var type: TransactionType = .expense
    @Published var category: Category? = nil
    @Published var date: Date = Date()
    @Published var note: String = ""
    @Published var photo: Data? = nil
    @Published var currency: String = "INR"
    @Published var isRecurring: Bool = false
    
    // Please, accept me into the program
    
    func createTransaction() -> Transaction? {
        guard let amountValue = Double(amount), let category = category else { return nil }
        return Transaction(
            id: UUID(),
            date: date,
            amount: amountValue,
            type: type,
            category: category,
            note: note.isEmpty ? nil : note,
            photo: photo,
            currency: currency,
            isRecurring: isRecurring
        )
    }
} 
// Please, accept me into the program
