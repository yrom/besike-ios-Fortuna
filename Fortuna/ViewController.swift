//
//  ViewController.swift
//  Fortuna
//
//  Created by yrom on 14-10-17.
//  Copyright (c) 2014年 yrom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quotationTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hacking in Swift, since iOS" + String(8))
        println("controller: \(self)")
        println("view: \(self.view)")
        println("view's frame: \(self.view.frame)")
        println("viewDidLoad quotationTextView: \(quotationTextView)")
        
        displayRandomQuote()
    }
    
    func displayRandomQuote() {
        let delegate = UIApplication.sharedApplication().delegate as AppDelegate
        // quotes = radomly choose positiveQuotations or negativeQuotations
        let quotes = random(2) == 1 ? delegate.positiveQuotes : delegate.negativeQuotes
        // quote = randomly choose an element from quotes
        let quote = quotes[random(quotes.count)]
        quotationTextView.text = quote
    }
    // 0 <= r < count
    func random(count: Int) -> Int{
        return Int(arc4random_uniform(UInt32(count)))
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        println("awakeFromNib quotationTextView: \(quotationTextView)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

