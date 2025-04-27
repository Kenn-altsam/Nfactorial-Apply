import Foundation
import Supabase

@MainActor
class TransactionViewModel: ObservableObject {
    @Published var transactions: [Transaction] = []
    @Published var isLoading = false
    @Published var error: Error?
    
    func fetchTransactions() async {
        isLoading = true
        do {
            let response = try await SupabaseManager.shared.client
                .from("transactions")
                .select()
                .order("date", ascending: false)
                .execute()
            
            transactions = try response.decoded(to: [Transaction].self)
        } catch {
            self.error = error
        }
        isLoading = false
    }
    
    func addTransaction(_ transaction: Transaction) async {
        do {
            let response = try await SupabaseManager.shared.client
                .from("transactions")
                .insert(transaction)
                .execute()
            
            // Refresh the transactions list
            await fetchTransactions()
        } catch {
            self.error = error
        }
    }
    
    func updateTransaction(_ transaction: Transaction) async {
        do {
            let response = try await SupabaseManager.shared.client
                .from("transactions")
                .update(transaction)
                .eq("id", value: transaction.id)
                .execute()
            
            // Refresh the transactions list
            await fetchTransactions()
        } catch {
            self.error = error
        }
    }
    
    func deleteTransaction(_ transaction: Transaction) async {
        do {
            let response = try await SupabaseManager.shared.client
                .from("transactions")
                .delete()
                .eq("id", value: transaction.id)
                .execute()
            
            // Refresh the transactions list
            await fetchTransactions()
        } catch {
            self.error = error
        }
    }
} 