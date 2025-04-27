import Foundation
import Combine

class DashboardViewModel: ObservableObject {
    @Published var transactions: [Transaction] = [] // Load from CoreData or mock data
    
    var balance: Double {
        transactions.reduce(0) { $0 + ($1.type == .income ? $1.amount : -$1.amount) }
    }
    var balanceString: String {
        String(format: "₹%.2f", balance)
    }
    var categorySummary: [CategorySummary] {
        let grouped = Dictionary(grouping: transactions, by: { $0.category })
        return grouped.map { (category, txs) in
            CategorySummary(category: category, amount: txs.reduce(0) { $0 + $1.amount })
        }
    }
    var recentTransactions: [Transaction] {
        Array(transactions.sorted { $0.date > $1.date }.prefix(5))
    }
}

struct CategorySummary: Identifiable {
    let id = UUID()
    let category: Category
    let amount: Double
} 