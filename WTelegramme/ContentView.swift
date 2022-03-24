//
//  ContentView.swift
//  WTelegramme
//
//  Created by Sergey Shirnin on 24.03.2022.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    var body: some View {
        WebView().frame(minWidth: 800, minHeight: 800)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

final class WebView: NSObject, NSViewRepresentable, WKNavigationDelegate {
    let webView = WKWebView()
    
    func makeNSView(context: Context) -> WKWebView {
        webView.navigationDelegate = self
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        let request = URLRequest(url: URL(string: "https://web.telegram.org/z")!)
        
        nsView.load(request)
    }
}
