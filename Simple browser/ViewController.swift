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
        seachBar.delegate = self

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

    @IBAction private func stopButtonPressed(_ sender: UIBarButtonItem) {
        webView.stopLoading()
    }

    private func loadDefaultPage() {
        guard let url = URL(string: "https://www.google.com") else {
            return
        }
        let requesr = URLRequest(url: url)
        webView.load(requesr)
    }
}

extension ViewController: WKNavigationDelegate, UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        seachBar.resignFirstResponder()
        let defaultAddress = "http://www."

        if let urlstring = seachBar.text {
            guard let url = URL(string: "\(defaultAddress)\(urlstring)") else {
                return
            }
            let request = URLRequest(url: url)
            webView.load(request)
        } else {
            print("Can't load page")
        }
    }
}
