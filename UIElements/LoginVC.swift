//
//  LoginVC.swift
//  UIElements
//
//  Created by akshay on 18/06/21.
//

import UIKit

class LoginVC: UIViewController {

    private let lbl:UILabel = {
        let labl = UILabel()
        labl.text = "MUBIZ"
        labl.font = UIFont(name: "Copperplate", size: 40.0)
        labl.textAlignment = .center
        labl.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return labl
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
        txt.attributedPlaceholder = NSAttributedString(string: "PASSWORD", attributes: [NSAttributedString.Key.foregroundColor : UIColor.init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)])
        txt.layer.cornerRadius = 8
        return txt
    }()
    private let btn:UIButton = {
        let btnx = UIButton()
        btnx.setTitle("LOGIN", for: .normal)
        btnx.layer.cornerRadius = 8
        btnx.addTarget(self, action: #selector(loginclicked), for: .touchUpInside)
        btnx.backgroundColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return btnx
    }()
    @objc private func loginclicked() {
        let vc = MainViewVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    private let rlink:UIButton = {
        let btn = UIButton()
        btn.setTitle("New User Registeration !", for: .normal)
        btn.setTitleColor(.init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1), for: .normal)
        btn.addTarget(self, action: #selector(registeration), for: .touchUpInside)
        return btn
    }()
    @objc private func registeration() {
        let vc = RegisterVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        view.addSubview(lbl)
        view.addSubview(txt1)
        view.addSubview(txt2)
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
        txt1.frame = CGRect(x: 80, y: Int(view.height/4)+120, width: Int(view.width-160), height: 40)
        txt2.frame = CGRect(x: 80, y: Int(view.height/4)+180, width: Int(view.width-160), height: 40)
        btn.frame = CGRect(x: 80, y: Int(view.height/4)+240, width: Int(view.width-160), height: 40)
        rlink.frame = CGRect(x: 80, y: Int(view.height/4)+290, width: Int(view.width-160), height: 20)
    }
}
