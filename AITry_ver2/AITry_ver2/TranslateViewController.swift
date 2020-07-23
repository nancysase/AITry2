//
//  TranslateViewController.swift
//  AITry_ver2
//
//  Created by SASE Koichiro on 2020/07/23.
//  Copyright © 2020 SASE Koichiro. All rights reserved.
//

import UIKit
import MLKit



class TranslateViewController: UIViewController {
    
    @IBOutlet weak var baseTextView: UITextView!
    @IBOutlet weak var translatedTextView: UITextView!
    
    var baseText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        baseTextView.text = baseText
        translate()

    }
    
    func translate() {
        let options = TranslatorOptions(sourceLanguage: .english, targetLanguage: .japanese)
        let englishJapaneseTranslator = Translator.translator(options: options)
        let conditions = ModelDownloadConditions(allowsCellularAccess: false, allowsBackgroundDownloading: true)
        englishJapaneseTranslator.downloadModelIfNeeded(with: conditions) { error in
            guard error == nil else { return }
            englishJapaneseTranslator.translate(self.baseTextView.text) { translatedText, error in
                guard error == nil, let translatedText = translatedText else { return }
                self.translatedTextView.text = translatedText
            }

        }
    }

    
}
