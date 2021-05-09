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
    }

    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
    }

    
    @IBAction func nextButtonPressed(_ sender: Any) {
    }
    @IBAction func refreshButtonPressed(_ sender: UIBarButtonItem) {
    }
}
