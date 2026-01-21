//
//  ContentView.swift
//  Elvis
//
//  Created by Adebayode Adegoke on 21/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    @State var imageName = ""
    var body: some View {
        VStack {
            
            Text("What's So Funny \n'Bout")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.black)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
        }
        
        HStack {
            Button("Peace") {
                message = "Peace"
                imageName = "peacesign"
            }
            Button("Love") {
                message = "Love"
                imageName = "heart"
            }
            Button("Understanding") {
                message = "Understanding"
                imageName = "lightbulb"
            }
        }
        .tint(.purple)
        .buttonStyle(.borderedProminent)
        
        .padding()
    }
}

#Preview {
    ContentView()
}
