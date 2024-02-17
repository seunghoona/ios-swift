//
//  MyZStack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by 나승후 on 2/17/24.
//

import SwiftUI


struct MyZStack: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .zIndex(1.2)
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(.yellow)
                .zIndex(1.1)
            
            
            Rectangle()
                .frame(width: 400, height: 400)
                .foregroundColor(.green)
                .zIndex(0)
        }
    }
    
    
}


#Preview {
    MyZStack()
}


