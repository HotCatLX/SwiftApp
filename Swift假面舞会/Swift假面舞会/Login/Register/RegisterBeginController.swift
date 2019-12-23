//
//  RegisterBeginController.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/12/17.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit


class RegisterBeginController: UIViewController {

    
    fileprivate lazy var nextBtn: UIButton = {
        var btn = UIButton(title: "下一步", textColor: UIColor.white, backColor: BaseBlueColor, fontSize: 16, corner: 22)
        return btn
    }()
    
    
    fileprivate lazy var mobileInfo: RegisterInputView = {
        var mobile = RegisterInputView()
        mobile.configViewInfo(leftStr: "+86" ,middlePlaceStr: "请输入手机号" ,rightStr: nil)
        mobile.inputType = .number
        return mobile
    }()
    
    fileprivate lazy var codeInfo: RegisterInputView = {
        var code = RegisterInputView()
        code.configViewInfo(leftStr: "验证码" ,middlePlaceStr: "请输入收到的验证码" ,rightStr: "发送验证码")
        code.inputType = .number
        code.rightBtnClickHandler = {
            weak var weakSelf = self
            weakSelf?.sendSecurityCode()
        }
        return code
    }()
    
    fileprivate lazy var passwordInfo: RegisterInputView = {
        var password = RegisterInputView()
        password.configViewInfo(leftStr: "设置密码" ,middlePlaceStr: "设置登陆密码" ,rightStr: nil)
        password.inputType = .normal
        return password
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configSubviews()
    }
    


}


// MARK: - Private API
extension RegisterBeginController {
    
    //发送验证码
    
    func sendSecurityCode() {
        
        guard let mobile = mobileInfo.inputStr else {
            ToastView.shared().show(str: "请输入手机号码")
            return
        }
        
        if mobile.isEmpty() || !mobile.isPhone() {
            ToastView.shared().show(str: "请输入正确的手机号码")
            return
        }
        
        
        
        
        
        
    }
    
    
}


// MARK: - Config UI
extension RegisterBeginController {
    
    func configSubviews() {
        view.backgroundColor = UIColor.white
        self.view.addSubview(mobileInfo)
        self.view.addSubview(codeInfo)
        self.view.addSubview(passwordInfo)
        self.view.addSubview(nextBtn)

        mobileInfo.snp.makeConstraints { (make) in
            make.left.right.equalTo(view)
            make.height.equalTo(Height(47))
            make.top.equalTo(view.snp.top).offset(Height(50))
        }
        
        codeInfo.snp.makeConstraints { (make) in
            make.left.right.equalTo(view)
            make.height.equalTo(Height(47))
            make.top.equalTo(mobileInfo.snp.bottom)
        }
        
        passwordInfo.snp.makeConstraints { (make) in
             make.left.right.equalTo(view)
             make.height.equalTo(Height(47))
             make.top.equalTo(codeInfo.snp.bottom)
        }
        
        nextBtn.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(Height(44))
            make.width.equalTo(Width(293))
            make.top.equalTo(passwordInfo.snp.bottom).offset(Height(30))
        }
        
    }
}
