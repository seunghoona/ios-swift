//
//  MyBasicCard.swift
//  SwiftUI_layout_tutorial_#1
//
//  Created by 나승후 on 2/17/24.
//

import SwiftUI


struct MyProjectCard: View {
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Divider().opacity(0)
           Text("나승후의 이야기")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer().frame(height: 10)
           Text("10 AM ~ 11 MA")
            Spacer().frame(height: 20)
            
            HStack {
                Circle().frame(width: 50, height: 50)
                Circle().frame(width: 50, height: 50)
                Circle().frame(width: 50, height: 50)
                
                Spacer()
                
                Text("확인")
                    .foregroundColor(.white)
                    .frame(width: 80)
                    .padding(10)
                    .background(.blue)
                    .cornerRadius(20)
                
            }
        }
        
        .frame(height: 200)
        .padding()
        .background(Color.yellow)
        .cornerRadius(20)
    }
}


#Preview {
    MyProjectCard()
}
