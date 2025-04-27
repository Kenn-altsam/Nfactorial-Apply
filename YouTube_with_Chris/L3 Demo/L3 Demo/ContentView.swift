//
//  ContentView.swift
//  L3 Demo
//
//  Created by Altynbek Kenzhe on 26.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0){

                Image("niagarafalls")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack { // HStack arranges Views side by side
                    Text("Niagara Falls")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer() // Some Views take up only as much space as needed
                    // Some Views take up as much space as it can
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundStyle(.orange)
                                .font(.caption)
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 361)")
                    }
                    .foregroundStyle(.orange)
                    .font(.caption)
                    

                    
                }
                
                
                
                Text("Come vistit the falls for an experience of a lifetime")
                
                
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundStyle(.gray)
                .font(.caption)

            }
            .padding() // Modifiers are applied in sequence
            .background(Rectangle()
                .foregroundStyle(.white)
                .cornerRadius(15)
                .shadow(radius: 15))
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
