//
//  WebLinkButton.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 나승후 on 2/16/24.
//

import SwiftUI


struct WebLinkButton: View {
 

    private var backGroundColor : Color
    private var text: String
    
    init(backGroundColor: Color = Color.black, text: String = "Undefined") {
        self.backGroundColor = backGroundColor
        self.text = text
    }

    
    var body: some View  {
        Text(self.text)
            .padding(20)
            .background(self.backGroundColor)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
    
}

#Preview {
    WebLinkButton(backGroundColor: Color.green, text: "네이버")
}
