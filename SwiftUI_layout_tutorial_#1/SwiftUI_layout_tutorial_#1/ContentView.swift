//
//  ContentView.swift
//  SwiftUI_layout_tutorial_#1
//
//  Created by 나승후 on 2/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: "line.horizontal.3")
                    .font(.largeTitle)
                Spacer()
                Image(systemName: "person.crop.circle.fill")
                    .font(.largeTitle)
            }.padding()
            
        
            
            VStack (alignment: .leading, spacing: 10){
            
                
                Text("Huhu Todo LIST ")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .padding()
            
                ZStack(alignment: .bottomTrailing){
        
                    ScrollView {
                    
                        VStack() {
                            MyProjectCard()
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()
                            MyBasicCard()
                        }.padding()
                    
                    }
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 60, height: 60)
                        .overlay(
                            Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundStyle(.white)
                        )
                        .shadow(radius: 20)
                        .padding()

                }
            }
        }
    }
}

#Preview {
    ContentView()
}
