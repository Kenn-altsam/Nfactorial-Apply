Yimport SwiftUI

struct TransactionListView: View {
    @StateObject private var viewModel = TransactionViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(viewModel.transactions) { transaction in
                        TransactionRow(transaction: transaction)
                    }
                    .onDelete { indexSet in
                        Task {
                            for index in indexSet {
                                await viewModel.deleteTransaction(viewModel.transactions[index])
                            }
                        }
                    }
                }
            }
            .navigationTitle("Transactions")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Add new transaction
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .task {
                await viewModel.fetchTransactions()
            }
            .refreshable {
                await viewModel.fetchTransactions()
            }
        }
    }
}

struct TransactionRow: View {
    let transaction: Transaction
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(transaction.description)
                .font(.headline)
            HStack {
                Text(transaction.category)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
                Text(String(format: "%.2f", transaction.amount))
                    .font(.subheadline)
                    .foregroundColor(transaction.type == .income ? .green : .red)
            }
        }
    }
} 