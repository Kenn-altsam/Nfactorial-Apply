import SwiftUI

struct AddTransactionView: View {
    @StateObject var viewModel = AddTransactionViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            TextField("Amount", text: $viewModel.amount)
                .keyboardType(.decimalPad)
            Picker("Type", selection: $viewModel.type) {
                ForEach(TransactionType.allCases) { type in
                    Text(type.rawValue.capitalized).tag(type)
                }
            }
            // Category picker should be implemented here
            DatePicker("Date", selection: $viewModel.date, displayedComponents: .date)
            TextField("Note", text: $viewModel.note)
            Toggle("Recurring", isOn: $viewModel.isRecurring)
            // Photo picker can be added here
            Button("Save") {
                if let tx = viewModel.createTransaction() {
                    // Save transaction to storage
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .navigationTitle("Add Transaction")
    }
} 