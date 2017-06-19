//
//  ViewController.swift
//  PRLoaderDemo
//
//  Created by Rati on 16/06/17.
//  Copyright © 2017 Ratti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnStartLoaderAction(_ sender: Any)
    {
        PRLoader.PRload()
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { (timer) in
            
            PRLoader.PRUnload()
        }
    }
    
    
}

