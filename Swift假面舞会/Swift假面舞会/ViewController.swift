//
//  ViewController.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/11/26.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orange
        
        let label: UILabel = UILabel.init(text: "sss", color: UIColor(hexStr: "5943FC") , fontSize: nil)
                
        label.frame = CGRect(x: 100, y: 100, width: 100, height: 30)
        self.view.addSubview(label)
    }


}

