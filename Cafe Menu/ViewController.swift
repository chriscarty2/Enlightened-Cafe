//
//  ViewController.swift
//  Cafe Menu
//
//  Created by Chris Carty on 7/12/18.
//  Copyright © 2018 Chris Carty. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var showMenu: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://enlightened.revelup.com/weborder/?establishment=1#login")
        showMenu.load(URLRequest(url: url!))
    }
  

}

