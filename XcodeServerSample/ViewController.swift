//
//  ViewController.swift
//  XcodeServerSample
//
//  Created by Administrator on 11/13/17.
//  Copyright © 2017 Pratibha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

