//
//  YTPage.swift
//  Work Out Club
//
//  Created by Vindya Sunali on 2023-05-18.
//

import UIKit
import WebKit

class YTPage: UIViewController {
    
    let webView: WKWebView = {
            let webView = WKWebView()
            webView.translatesAutoresizingMaskIntoConstraints = false
            return webView
        }()

        override func viewDidLoad() {
            super.viewDidLoad()

            setUi()
            youtubeVideoView()
        }

        func setUi() {
            view.backgroundColor = .white
            view.addSubview(webView)
            
            
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }

        func youtubeVideoView() {
            let videoId = "UqFzWx8X5AM"

            let embedHTML = """
            <html>
            <body>
            <iframe width="980" height="500" src="https://www.youtube.com/embed/\(videoId)?playsinline=1" frameborder="0" allowfullscreen></iframe>
            </body>
            </html>
            """
            
            webView.loadHTMLString(embedHTML, baseURL: nil)
    }
}
    
    
    

