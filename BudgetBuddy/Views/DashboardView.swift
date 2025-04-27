import SwiftUI

struct DashboardView: View {
    @StateObject var viewModel = DashboardViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Current Balance")
                    .font(.headline)
                Text(viewModel.balanceString)
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom)
                
                Text("Recent Transactions")
                    .font(.headline)
                List(viewModel.recentTransactions) { tx in
                    TransactionRow(transaction: tx)
                }
                .frame(height: 250)
                
                HStack {
                    NavigationLink("Add Transaction", destination: AddTransactionView())
                    Spacer()
                    NavigationLink("Analysis", destination: AnalysisView())
                }
                .padding()
            }
            .padding()
            .navigationTitle("Dashboard")
        }
    }
} 