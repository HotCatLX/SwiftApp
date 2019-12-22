//
//  RegisterInputView.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/12/17.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit

class RegisterInputView: UIView {
    
    //点击事件闭包
    public var rightBtnClickHandler: (()->())?
    
    //暴露输入框内容
    public var inputStr: String? {
        get {
            return inputTextfield.text
        }
    }
    
    
    
    fileprivate lazy var topLine: UIView = {
        var line = UIView()
        line.backgroundColor = UIColor(hexStr: "EEEEEE")
        return line
    }()
    
    fileprivate lazy var titleLabel: UILabel = {
        var label = UILabel(text: "", color: ColorText_3, fontSize: 15)
        label.textAlignment = .center
        return label
    }()
    
    fileprivate var inputTextfield: UITextField = {
        let textfield = UITextField(placeStr: "", placeColor: ColorPlaceHolder, fontSize: 15, tColor: ColorText_3)
        return textfield
    }()
    
    fileprivate var rightBtn: UIButton = {
        let btn = UIButton(title: "", textColor: BaseBlueColor, backColor: nil, fontSize: 15, corner: 0)
        btn.addTarget(self, action: #selector(btnClick(btn:)), for: .touchUpInside)
        return btn
    }()
    
}


// MARK: - UI
extension RegisterInputView {
    /*
        * @param leftStr 左侧显示文字
        * @param middlePlaceStr 中间输入框占位文字
        * @param rightStr 右侧按钮文字
        * @retuen
        */
       public func configViewInfo(leftStr: String ,middlePlaceStr: String ,rightStr: String?) {
           titleLabel.text = leftStr
           inputTextfield.placeholder = middlePlaceStr
           rightStr == nil ? self.configSubviews(showRightBtn: false) : self.configSubviews(showRightBtn: true)
           if rightStr != nil {rightBtn.setTitle(rightStr!, for: .normal)}
       }
       
      
       
       func configSubviews(showRightBtn: Bool) {
           self.addSubview(topLine)
           self.addSubview(titleLabel)
           self.addSubview(inputTextfield)
           
           topLine.snp.makeConstraints { (make) in
               make.top.equalTo(self.snp.top)
               make.width.equalTo(self)
               make.height.equalTo(1)
               make.left.equalTo(self.snp.left)
           }
           
           titleLabel.snp.makeConstraints { (make) in
               make.centerY.equalTo(self.snp.centerY)
               make.width.equalTo(Width(82))
               make.height.equalTo(Height(21))
               make.left.equalTo(self.snp.left).offset(Width(5))
           }
           
           inputTextfield.snp.makeConstraints { (make) in
               make.centerY.equalTo(self.snp.centerY)
               make.width.equalTo(Width(200))
               make.height.equalTo(Height(21))
               make.left.equalTo(self.snp.left).offset(Width(90))
           }
           
           if showRightBtn {
               self.addSubview(rightBtn)
               
               rightBtn.snp.makeConstraints { (make) in
                   make.centerY.equalTo(self.snp.centerY)
                   make.height.equalTo(Height(21))
                   make.width.equalTo(Width(100))
                   make.right.equalTo(self.snp.right).offset(Width(-15))
               }
               
           }
       }
    
}


// MARK: - Action
extension RegisterInputView {
    
    @objc func btnClick(btn: UIButton) {
        if let onClickBack = rightBtnClickHandler {    
            onClickBack()
        }
        
    }
    
    
    
    
}

