//
//  ToastView.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/12/23.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit

class ToastView: UIView {

    fileprivate lazy var bgContainer: UIView = {
        let bg = UIView()
        return bg
    }()
    
    
    
    
    static let shared = ToastView()

//    var noticeString: String
        

    
    
    
    
    public func show(str: String) {
        
//        self.noticeString = str
        
        UIApplication.shared.keyWindow?.addSubview(ToastView.shared)
        
        
        
    }

}
