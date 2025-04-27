import Foundation

struct Category: Identifiable, Hashable, Codable {
    let id: UUID
    let name: String
    let icon: String // SF Symbol name
    let color: String // Hex or system color name
} 
