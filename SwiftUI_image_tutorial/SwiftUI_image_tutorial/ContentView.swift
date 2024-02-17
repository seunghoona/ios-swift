//
//  ContentView.swift
//  SwiftUI_image_tutorial
//
//  Created by 나승후 on 2/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                
                Image("myImage")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 30)
                    .offset(y:-150)
                    
                
                CircleImageView()
                HStack {
                    NavigationLink {
                        MyWebView(urlToLoad: "http://www.sohuhu.kro.kr/")
                    } label: {
                        Text("쏘야 후야 놀러가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }

                }.padding(70)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
