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
    
    
    private let tv:UITextView = {
        let tvs = UITextView()
        tvs.text = "Mubiz application is for info and links provided about movies. All kinds of movies provided here and their links too, and for request any movie user wanted that feature is also added to it."
        tvs.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        tvs.font = UIFont(name: "Copperplate", size: 24.0)
        return tvs
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        view.addSubview(tv)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tv.frame = CGRect(x: 25, y: (view.height/2)-26, width: view.width-50, height: 52)
    }
}
