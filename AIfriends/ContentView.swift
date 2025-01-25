import SwiftUI
import WebKit

// WebView
struct WebView: UIViewRepresentable {
    
    let url: URL
    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        let view = webView
        view.allowsBackForwardNavigationGestures = true // スワイプジェスチャーを有効化
        return view
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView: View {
    
    @State private var webView: WKWebView?
    
    var body: some View {
        VStack {
            if let webView = webView {
                VStack(spacing: 0){
                    WebView(url: URL(string: "https://aifriends.deno.dev/")!, webView: webView) // ここに任意のURL
                    Divider()
                    // ここからナビゲーションボタン
                    HStack {
                        Button(action: {
                            webView.goBack() // 戻る
                        }, label: {
                            Image(systemName: "chevron.backward")
                        })
                        Spacer()
                            .frame(width: 40)
                        Button(action: {
                            webView.goForward() // 進む
                        }, label: {
                            Image(systemName: "chevron.forward")
                        })
                        Spacer()
                    }
                    .padding(.leading,40)
                    .padding(.top,10)
                    .padding(.bottom,7)
                    .frame(maxWidth: .infinity)
                    
                }
            }
        }
        
        .onAppear {
            webView = WKWebView()
        }
    }
}

#Preview {
    ContentView()
}
