import SwiftUI

struct CategoryManagerView: View {
    @State private var categories: [Category] = []
    @State private var newCategoryName: String = ""
    @State private var newCategoryIcon: String = "tag"
    @State private var newCategoryColor: String = "blue"
    
    var body: some View {
        VStack {
            HStack {
                TextField("Category Name", text: $newCategoryName)
                TextField("Icon (SF Symbol)", text: $newCategoryIcon)
                TextField("Color", text: $newCategoryColor)
                Button("Add") {
                    let newCat = Category(id: UUID(), name: newCategoryName, icon: newCategoryIcon, color: newCategoryColor)
                    categories.append(newCat)
                    newCategoryName = ""
                }
            }
            List {
                ForEach(categories) { cat in
                    HStack {
                        Image(systemName: cat.icon)
                        Text(cat.name)
                        Spacer()
                        Text(cat.color)
                    }
                }
                .onDelete { indexSet in
                    categories.remove(atOffsets: indexSet)
                }
            }
        }
        .padding()
        .navigationTitle("Manage Categories")
    }
} 