//
//  ProfileVC.swift
//  UIElements
//
//  Created by Akshay Jangir on 21/06/21.
//  Copyright © 2021 axy1976. All rights reserved.
//

import Foundation
import UIKit

class ProfileVC: UIViewController {
    
    private let lblswitch:UILabel = {
        let labl = UILabel()
        labl.text = "Auto Recommandation"
        labl.font = UIFont(name: "Copperplate", size: 20.0)
        labl.textAlignment = .left
        labl.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return labl
    }()
    private let swch:UISwitch = {
        let sitc = UISwitch()
        
        return sitc
    }()
    private let tv:UITextView = {
        let tvs = UITextView()
        tvs.text = "you can enable auto recommandation for movies !"
        tvs.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        tvs.font = UIFont(name: "Copperplate", size: 24.0)
        tvs.backgroundColor = .none
        return tvs
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        view.addSubview(lblswitch)
        view.addSubview(swch)
        view.addSubview(tv)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lblswitch.frame = CGRect(x: 15, y: 20, width: view.width-30, height: 30)
        swch.frame = CGRect(x: view.width/2+100, y: 20, width: 60, height: 30)
        tv.frame = CGRect(x: 15, y: 60, width: view.width-30, height: 160)
    }
}
