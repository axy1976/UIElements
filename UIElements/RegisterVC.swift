//
//  RegisterVC.swift
//  UIElements
//
//  Created by Akshay Jangir on 20/06/21.
//  Copyright © 2021 axy1976. All rights reserved.
//

import Foundation
import UIKit

class RegisterVC: UIViewController {

    private let lbl:UILabel = {
        let labl = UILabel()
        labl.text = "MUBIZ"
        labl.font = UIFont(name: "Copperplate", size: 40.0)
        labl.textAlignment = .center
        labl.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return labl
    }()
    private let txt0:UITextField = {
        let txt = UITextField()
        txt.font = UIFont(name: "", size: 20.0)
        txt.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        txt.attributedPlaceholder = NSAttributedString(string: "FULLNAME", attributes: [NSAttributedString.Key.foregroundColor : UIColor.init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)])
        txt.layer.cornerRadius = 8
        return txt
    }()
    private let txt1:UITextField = {
        let txt = UITextField()
        txt.font = UIFont(name: "", size: 20.0)
        txt.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        txt.attributedPlaceholder = NSAttributedString(string: "USERNAME", attributes: [NSAttributedString.Key.foregroundColor : UIColor.init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)])
        txt.layer.cornerRadius = 8
        return txt
    }()
    private let txt2:UITextField = {
        let txt = UITextField()
        txt.font = UIFont(name: "", size: 20.0)
        txt.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        txt.attributedPlaceholder = NSAttributedString(string: "E-MAIL", attributes: [NSAttributedString.Key.foregroundColor : UIColor.init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)])
        txt.layer.cornerRadius = 8
        return txt
    }()
    private let txt3:UITextField = {
        let txt = UITextField()
        txt.font = UIFont(name: "", size: 20.0)
        txt.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        txt.attributedPlaceholder = NSAttributedString(string: "PASSWORD", attributes: [NSAttributedString.Key.foregroundColor : UIColor.init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)])
        txt.layer.cornerRadius = 8
        return txt
    }()
    private let btn:UIButton = {
        let btnx = UIButton()
        btnx.setTitle("REGISTER", for: .normal)
        btnx.layer.cornerRadius = 8
        btnx.addTarget(self, action: #selector(registerclicked), for: .touchUpInside)
        btnx.backgroundColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return btnx
    }()
    @objc private func registerclicked() {
        let vc = NextRegisterVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    private let rlink:UIButton = {
        let btn = UIButton()
        btn.setTitle("Already A User !", for: .normal)
        btn.setTitleColor(.init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1), for: .normal)
        btn.addTarget(self, action: #selector(registeration), for: .touchUpInside)
        return btn
    }()
    @objc private func registeration() {
        let vc = LoginVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        view.addSubview(lbl)
        view.addSubview(txt0)
        view.addSubview(txt1)
        view.addSubview(txt2)
        view.addSubview(txt3)
        view.addSubview(btn)
        view.addSubview(rlink)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))

        tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }
    private var keysize:CGFloat = 0.0
    @objc func dismissKeyboard() {
        if(keysize != 0.0)
        {
            keysize = 100 - keysize
        }
        self.view.frame.origin.y -= keysize
        keysize = 0.0
        view.endEditing(true)
    }

    @objc func keyboardWillShow(notification: NSNotification) {
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
           return
        }
        self.view.frame.origin.y = 100 - keyboardSize.height
        keysize = keyboardSize.height
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lbl.frame = CGRect(x: 20, y: Int(view.height/5), width: Int(view.width-40), height: 40)
        txt0.frame = CGRect(x: 80, y: Int(view.height/4)+120, width: Int(view.width-160), height: 40)
        txt1.frame = CGRect(x: 80, y: Int(view.height/4)+180, width: Int(view.width-160), height: 40)
        txt2.frame = CGRect(x: 80, y: Int(view.height/4)+240, width: Int(view.width-160), height: 40)
        txt3.frame = CGRect(x: 80, y: Int(view.height/4)+300, width: Int(view.width-160), height: 40)
        btn.frame = CGRect(x: 80, y: Int(view.height/4)+360, width: Int(view.width-160), height: 40)
        rlink.frame = CGRect(x: 80, y: Int(view.height/4)+410, width: Int(view.width-160), height: 20)
    }
}
