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
        var label = UILabel(text: "假面舞会", color: ColorText_8, fontSize: 20)
        return label
    }()
    
    fileprivate lazy var loginBtn: UIButton = {
        var btn = UIButton(title: "登录", textColor: UIColor.white, backColor: BaseBlueColor, fontSize: 16, corner: 22)
        return btn
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configSubviews()
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


// MARK: - Config UI

extension LoginBeginController {
    
    func configSubviews() {
        self.view .addSubview(iconImage)
        
        
        iconImage.snp.makeConstraints { (make) in
        }

    }
    
    
    
    
}
