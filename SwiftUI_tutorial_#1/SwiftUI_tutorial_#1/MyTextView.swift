//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 나승후 on 2/16/24.
//

import SwiftUI

struct MyTextView: View {
    
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isAtivated: Binding<Bool> = .constant(false)) {
        _isActivated = isAtivated
    }
    
    @State
    private var index: Int = 0;
    
    // 배경색 배열 준비
    private let backgorundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("배경 아이템 인덱스\(self.index)")
                .font(.system(size: 30 ))
                .fontWeight(.bold)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
            Text("활성화 상태 \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
            Spacer()
        }.background(backgorundColors[index])
            .onTapGesture {
                if (self.index == self.backgorundColors.count - 1) {
                    self.index = 0
                    return
                }
                self.index += 1
            }
    }
}

#Preview {
    MyTextView()
}
