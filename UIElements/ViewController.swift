//
//  ViewController.swift
//  UIElements
//
//  Created by akshay on 15/06/21.
//

import UIKit

class ViewController: UIViewController {

    //label
    private let lbl:UILabel = {
        let label = UILabel()
        label.text = "UIElements"
        label.textAlignment = .center
        label.textColor = .systemTeal
        label.contentScaleFactor = 30
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(lbl)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbl.frame = CGRect(x: 20, y: 40, width: view.width-40, height: 40)
    }

}

