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
    
    
    
    
    
    
}
