import SwiftUI

struct TransactionListView: View {
    @StateObject var viewModel = TransactionListViewModel()
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search", text: $viewModel.searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                // Category filter picker can be added here
            }
            List(viewModel.filteredTransactions) { tx in
                TransactionRow(transaction: tx)
            }
        }
        .navigationTitle("Transactions")
    }
} 