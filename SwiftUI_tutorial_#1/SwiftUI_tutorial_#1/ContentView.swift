//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 나승후 on 2/16/24.
//

import SwiftUI

struct ContentView: View {
    
    // @State 값의 변화를 감지하여 View에 적용해줌
    @State
    private var isActivated: Bool = false

    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyVstackView(isAtivated: $isActivated)
                    MyVstackView(isAtivated: $isActivated)
                    MyVstackView(isAtivated: $isActivated)
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                // 탭 제스쳐 추가
                .onTapGesture {
                    // 애니메이션을 추가
                    withAnimation {
                        self.isActivated.toggle()
                    }
                }
                NavigationLink(destination: MyTextView(isAtivated: $isActivated)) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top, 50)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
