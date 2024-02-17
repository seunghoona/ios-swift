//
//  MyStackViewView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 나승후 on 2/16/24.
//

import SwiftUI

struct MyVstackView: View {
    
    // 데이터를 연동시킨다.
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isAtivated: Binding<Bool> = .constant(false)) {
        _isActivated = isAtivated
    }
    
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        }.background(self.isActivated ? Color.green : Color.red)
            .padding(self.isActivated ? 10 : 0)
    }
}

#Preview {
    MyVstackView()
}
