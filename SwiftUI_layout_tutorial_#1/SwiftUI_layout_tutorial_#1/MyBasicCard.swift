//
//  MyBasicCard.swift
//  SwiftUI_layout_tutorial_#1
//
//  Created by 나승후 on 2/17/24.
//

import SwiftUI


struct MyBasicCard: View {
    var body: some View {
        
        HStack(spacing:20) {
            
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundStyle(.white)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("유튜브 라이브 버닝")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Text("8 PM ~ 10 PM")
                    .foregroundColor(.white)
            }
            
            Spacer()
        }
        
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
        
        
    }
}


#Preview {
    MyBasicCard()
}
