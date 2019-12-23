//
//  StringExtension.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/12/23.
//  Copyright © 2019 suckerl. All rights reserved.
//

import Foundation


extension String {
    /*
     * 判断字符串是否为空
     * @retuen 字符串是否为空
     */
    func isEmpty() -> Bool {
        if (self.lengthOfBytes(using: .unicode) == 0 || self.lengthOfBytes(using: .utf8) == 0 ) { return true }
        return false
    }
    
    

    /*
     * 判断字符串是否是手机格式
     * @retuen 字符串是否是手机号码
     */
    func isPhone() -> Bool {
        if self.count != 11 { return false }
        let mobile = "^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$"
        let regexMobile = NSPredicate(format: "SELF MATCHES %@",mobile)
        let result: Bool = regexMobile.evaluate(with: self) ? true : false
        return result
        
//        if regexMobile.evaluate(with: self) == true {
//              return true
//          }else {
//              return false
//          }
    }
}
