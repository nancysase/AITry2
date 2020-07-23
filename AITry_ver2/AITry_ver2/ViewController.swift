//
//  ViewController.swift
//  AITry_ver2
//
//  Created by SASE Koichiro on 2020/07/22.
//  Copyright © 2020 SASE Koichiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func Next(_ sender: Any) {
        let nextVC = TranslateViewController()
        nextVC.baseText = textView.text
        present(nextVC, animated: true, completion: nil)
        
    }
    
}

