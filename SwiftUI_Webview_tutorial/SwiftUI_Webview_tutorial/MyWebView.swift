//
//  MyWebView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 나승후 on 2/16/24.
//

import SwiftUI
import WebKit


// uikit의 uiView를 사용할 수 있도록 한다.
struct MyWebView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIViewType, context:  UIViewRepresentableContext<MyWebView>) {
            
    }
    

    var urlToLoad : String
    
    
    // ui view 만들기
    func makeUIView(context: Context) -> some WKWebView {
        
        // 가져온 값이 만약 비어 있다면 기본 화면을
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView();
        }
        
        let webView = WKWebView();
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    // 업데이트 ui view

}

#Preview {
    MyWebView(urlToLoad: "")
}
