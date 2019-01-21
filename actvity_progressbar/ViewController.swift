//
//  ViewController.swift
//  actvity_progressbar
//
//  Created by Mac on 20/01/19.
//  Copyright © 2019 bhadresh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var actIndi: UIActivityIndicatorView!
  
    @IBOutlet weak var progressView1: UIProgressView!
    
    var timer:Timer!
    
    @IBAction func StartProcessAction(_ sender: UIButton) {

        actIndi.startAnimating()
        
    }
    
    @IBAction func StopProcessAction(_ sender: UIButton) {
        
        actIndi.stopAnimating()
    }
    
    var c:Float = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actIndi.hidesWhenStopped = true
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            print("hi")
            if self.c == 1
            {
                timer.invalidate()
            }
            self.progressView1.progress = self.c

            self.c += 0.1
        })
    
        timer.fire()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

