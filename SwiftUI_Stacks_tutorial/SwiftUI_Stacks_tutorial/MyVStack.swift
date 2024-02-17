//
//  MyVStack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by 나승후 on 2/17/24.
//

import SwiftUI


struct MyVStack: View {
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            Spacer()
            
            
//            Divider().opacity(0)
            
//            Rectangle()
//                .frame(height:1)
//                .opacity(0)
//
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .foregroundColor(Color.red)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .foregroundColor(Color.blue)
            
            Spacer()
                .frame(height: 20)
        }
        
        .frame(width: 300)
        .background(Color.green)
        // .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MyVStack()
}
