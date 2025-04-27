//
//  ContentView.swift
//  L1 Demo
//
//  Created by Altynbek Kenzhe on 26.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                
                Image("niagarafalls")
                    .resizable()
                    .cornerRadius(15)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("Niagara Falls")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
