//
//  ViewController.swift
//  MDB
//
//  Created by Michael Bharrat on 10/17/16.
//  Copyright © 2016 Michael Bharrat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "mdb.png")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onClick(_ sender: UIButton) {
        UIApplication.shared.openURL(NSURL(string: "http://slide.ly/view/7819f09542c61c2c0575d47c3f4ea8b0")! as URL)
    
    }


}

