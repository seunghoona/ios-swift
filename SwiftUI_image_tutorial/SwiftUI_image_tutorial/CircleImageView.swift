//
//  CircleImageView.swift
//  SwiftUI_image_tutorial
//
//  Created by 나승후 on 2/17/24.
//

import SwiftUI
import Foundation

struct CircleImageView: View {
    
    
    
    var body: some View {
        
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color:.gray , radius:10, x: 0 , y: 10 )
            .overlay(Circle().foregroundColor(.black).opacity(0.4))
            .overlay(Circle().stroke(Color.blue,lineWidth: 10).padding())
            .overlay(Circle().stroke(Color.yellow,lineWidth: 10).padding(30))
             .overlay(Circle().stroke(Color.green,lineWidth: 10))
            .overlay(
                Text("D-24").foregroundColor(.white)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
            )
    }


}


#Preview {
    CircleImageView()
}
