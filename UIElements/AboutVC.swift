//
//  AboutVC.swift
//  UIElements
//
//  Created by Akshay Jangir on 21/06/21.
//  Copyright © 2021 axy1976. All rights reserved.
//

import Foundation
import UIKit

class AboutVC: UIViewController {
    
    private let lbl:UILabel = {
        let labl = UILabel()
        labl.text = "MUBIZ"
        labl.font = UIFont(name: "Copperplate", size: 40.0)
        labl.textAlignment = .center
        labl.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return labl
    }()
    private let tv:UITextView = {
        let tvs = UITextView()
        tvs.text = "Mubiz application is for info and links provided about movies. All kinds of movies provided here and their links too, and for request any movie user wanted that feature is also added to it."
        tvs.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        tvs.font = UIFont(name: "Copperplate", size: 22.0)
        tvs.backgroundColor = .none
        return tvs
    }()
    private let lblr:UILabel = {
        let labl = UILabel()
        labl.text = "Rate US"
        labl.font = UIFont(name: "Copperplate", size: 20.0)
        labl.textAlignment = .left
        labl.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return labl
    }()
    private let sldr:UISlider = {
        let slr = UISlider()
        slr.minimumValue = 1.0
        slr.maximumValue = 10.0
        slr.addTarget(self, action: #selector(rate), for: .valueChanged)
        return slr
    }()
    @objc private func rate() {
        lblsr.text = String(Int(sldr.value))
    }
    private let lblsr:UILabel = {
        let labl = UILabel()
        labl.text = ""
        labl.font = UIFont(name: "Copperplate", size: 20.0)
        labl.textAlignment = .left
        labl.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return labl
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        view.addSubview(lbl)
        view.addSubview(tv)
        view.addSubview(sldr)
        view.addSubview(lblr)
        view.addSubview(lblsr)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbl.frame = CGRect(x: 25, y: 25, width: view.width-50, height: 40.0)
        tv.frame = CGRect(x: 25, y: lbl.frame.maxY+40, width: view.width-50, height: 140)
        lblr.frame = CGRect(x: 25, y: tv.frame.maxY+20, width: view.width-50, height: 20)
        sldr.frame = CGRect(x: 25, y: lblr.frame.maxY+20, width: view.width-50, height: 20)
        lblsr.frame = CGRect(x: view.width/2, y: tv.frame.maxY+20, width: 60, height: 20)
    }
}
