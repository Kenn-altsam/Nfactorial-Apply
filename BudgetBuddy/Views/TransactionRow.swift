import SwiftUI

struct TransactionRow: View {
    let transaction: Transaction
    
    var body: some View {
        HStack {
            Image(systemName: transaction.category.icon)
                .foregroundColor(Color(transaction.category.color))
            VStack(alignment: .leading) {
                Text(transaction.category.name)
                    .font(.headline)
                if let note = transaction.note {
                    Text(note)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            Text("\(transaction.type == .income ? "+" : "-")₹\(transaction.amount, specifier: "%.2f")")
                .foregroundColor(transaction.type == .income ? .green : .red)
        }
    }
} 