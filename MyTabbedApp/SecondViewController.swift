//
//  SecondViewController.swift
//  MyTabbedApp
//
//  Created by Douglas on 1/14/19.
//  Copyright © 2019 Douglas. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {

    var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWebViewLayout()
        loadWebViewDefaultPage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func configureWebViewLayout() {
        webView = WKWebView(frame: CGRect.zero, configuration: WKWebViewConfiguration())
            view.addSubview(webView!)
        let horzConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[childView]|", options: [], metrics: nil, views: ["childView" : webView!])
        let vertConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[childView]|", options: [], metrics: nil, views: ["childView" : webView!])
        view.addConstraints(horzConstraints)
        view.addConstraints(vertConstraints)
        webView?.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func loadWebViewDefaultPage() {
        let url = URL(string: "https://www.google.com")
        let request = URLRequest(url: url!)
        webView?.load(request)
    }

}

