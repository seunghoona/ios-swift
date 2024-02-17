//
//  ContentView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 나승후 on 2/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                
                NavigationLink {
                    MyWebView(urlToLoad: "https://www.naver.com")
                } label: {
                    WebLinkButton(backGroundColor: Color.green, text: "네이버")
                }
                
                NavigationLink {
                    MyWebView(urlToLoad: "https://www.daum.net")
                } label: {
                    WebLinkButton(backGroundColor: .orange, text: "다음")
                }
                
                NavigationLink {
                    MyWebView(urlToLoad: "https://www.google.com")
                } label: {
                    WebLinkButton(backGroundColor: .blue, text: "구글")
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
