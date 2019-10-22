//
//  ViewController.swift
//  SwiftyAPI
//
//  Created by Jose Carracedo, Juan on 23/10/2019.
//  Copyright © 2019 Jose Carracedo, Juan. All rights reserved.
//

import Cocoa
import SwiftEditorView

class ViewController: NSViewController {
    
    let lexer = SwiftLexer()

    
    @IBOutlet weak var codeView: SyntaxTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        codeView.theme = DefaultSourceCodeTheme()
        codeView.delegate = self as SyntaxTextViewDelegate
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: SyntaxTextViewDelegate {
    
    func didChangeText(_ syntaxTextView: SyntaxTextView) {
        
        
    }
    
    func didChangeSelectedRange(_ syntaxTextView: SyntaxTextView, selectedRange: NSRange) {
        
        
    }
    
    func lexerForSource(_ source: String) -> Lexer {
        return lexer
    }
    
}
