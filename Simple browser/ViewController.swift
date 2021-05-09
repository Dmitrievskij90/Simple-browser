//
//  ViewController.swift
//  Simple browser
//
//  Created by Konstantin Dmitrievskiy on 09.05.2021.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var seachBar: UISearchBar!
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self

        loadDefaultPage()
    }

    @IBAction private func backButtonPressed(_ sender: UIBarButtonItem) {
        if webView.canGoBack {
            webView.goBack()
        }
    }

    @IBAction private func nextButtonPressed(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }

    @IBAction private func refreshButtonPressed(_ sender: UIBarButtonItem) {
        webView.reload()
    }

    private func loadDefaultPage() {
        guard let url = URL(string: "https://www.google.com") else {
            return
        }
        let requesr = URLRequest(url: url)
        webView.load(requesr)
    }
}

extension ViewController: WKNavigationDelegate {
}
