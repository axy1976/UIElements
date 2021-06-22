//
//  Extensions.swift
//  UIElements
//
//  Created by akshay on 15/06/21.
//

import Foundation
import UIKit

extension UIView {
    public var width: CGFloat{ return frame.size.width}
    public var height: CGFloat{ return frame.size.height}
    public var top: CGFloat{ return frame.origin.y}
    public var bottom: CGFloat{ return frame.origin.y + height}
    public var left: CGFloat{ return frame.origin.x}
    public var right: CGFloat{ return frame.origin.x + width}
}
extension UIViewController {

    func showToast(message : String, font: UIFont) {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 1.0, delay: 0.8, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
