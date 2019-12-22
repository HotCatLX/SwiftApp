//
//  LoginBeginController.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/12/6.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit
import SnapKit

class LoginBeginController: UIViewController {
    
    /*
     * Subviews
     */
    
    fileprivate lazy var iconImage: UIImageView = {
        var iconImage = UIImageView(image: UIImage(named:"Login_Icon"))
        return iconImage
    }()
    
    fileprivate lazy var titleLabel: UILabel = {
        var label = UILabel(text: "假面舞会", color: ColorText_3, fontSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    fileprivate lazy var loginBtn: UIButton = {
        var btn = UIButton(title: "登录", textColor: UIColor.white, backColor: BaseBlueColor, fontSize: 16, corner: 22)
        btn.addTarget(self, action: #selector(loginBtnClick), for: .touchUpInside)
        return btn
    }()
    
    fileprivate lazy var registerBtn: UIButton = {
        var btn  = UIButton(title: "手机号码注册", textColor: UIColor.white, backColor: BaseBlueColor, fontSize: 16, corner: 22)
        btn.addTarget(self, action: #selector(registerBtnClick), for: .touchUpInside)
        return btn
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configSubviews()

        
    }

}
// MARK: - Action
extension LoginBeginController {
    
    @objc func registerBtnClick() {
        let registerVC = RegisterBeginController()
        let nav = UINavigationController(rootViewController: registerVC)
        self.show(nav, sender: nil)
    }
    
    
    @objc func loginBtnClick() {
        
    }
    
}






// MARK: - Config UI
extension LoginBeginController {
    
    func configSubviews() {
        view.backgroundColor = UIColor.white
        
        self.view.addSubview(iconImage)
        self.view.addSubview(titleLabel)
        self.view.addSubview(loginBtn)
        self.view.addSubview(registerBtn)

    
        iconImage.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.width.height.equalTo(Width(100))
            make.top.equalTo(view.snp.top).offset(Height(100))
        }

        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(Width(100))
            make.height.equalTo(Height(28))
            make.top.equalTo(iconImage.snp.bottom).offset(Height(35))
        }

        loginBtn.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(Width(293))
            make.height.equalTo(Height(44))
            make.top.equalTo(titleLabel.snp.bottom).offset(Height(44))
        }

        registerBtn.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view.snp_centerXWithinMargins)
            make.width.equalTo(Width(293))
            make.height.equalTo(Height(44))
            make.top.equalTo(loginBtn.snp.bottom).offset(Height(13))
        }
        
        
    }
    
    
    
    
}
