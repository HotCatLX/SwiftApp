//
//  ToastView.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/12/23.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit


/*
 *
 * 公用toast 组件
 *
 */

class ToastView: UIView {
    
    fileprivate lazy var toastLabel: UILabel = {
        let toast = UILabel(text: "", color: UIColor.white, fontSize: 14)
        toast.backgroundColor = UIColor.black
        toast.alpha = 0.7
        toast.numberOfLines = 0;
        toast.layer.cornerRadius = 20
        toast.layer.masksToBounds = true
        toast.textAlignment = .center
        return toast
    }()
    
    
    private static let sharedToast: ToastView = {
        let toast = ToastView()
        toast.frame = UIScreen.main.bounds
        return toast
    }()

    

    class func shared() -> ToastView {
        return sharedToast
    }


    public func show(str: String) {

        ToastView.shared().addSubview(toastLabel)
        ToastView.shared().toastLabel.text = str
        
        let rect: CGRect = str.boundingRect(with: CGSize(width:ScreenWidth - Width(60) , height: ScreenHeight), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font : Font(14)], context: nil)
        var toastWidth: CGFloat = rect.width
        var toastHeight: CGFloat = rect.height
        
        //default value
        if toastHeight < Height(40) { toastHeight = Height(40) }
        if toastWidth < Width(60) { toastWidth = Width(60) }

        ToastView.shared().toastLabel.frame = CGRect(x: (ScreenWidth - toastWidth)/2, y: (ScreenHeight-toastHeight)/2, width: Width(toastWidth), height: Height(toastHeight))
        
        
        UIApplication.shared.keyWindow?.addSubview(ToastView.shared())
        ToastView.shared().perform(#selector(removeFromSuperview), with: nil, afterDelay: 1.5)
    }

}
