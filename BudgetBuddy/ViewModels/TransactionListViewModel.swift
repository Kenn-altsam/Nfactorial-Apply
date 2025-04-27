import Foundation
import Combine

class TransactionListViewModel: ObservableObject {
    @Published var transactions: [Transaction] = []
    @Published var filterCategory: Category? = nil
    @Published var searchText: String = ""
    
    var filteredTransactions: [Transaction] {
        transactions.filter { tx in
            (filterCategory == nil || tx.category == filterCategory!) &&
            (searchText.isEmpty || (tx.note?.localizedCaseInsensitiveContains(searchText) ?? false))
        }
    }
} 