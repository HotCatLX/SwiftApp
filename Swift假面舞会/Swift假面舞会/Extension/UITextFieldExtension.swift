//
//  UITextFieldExtension.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/12/17.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit

extension UITextField {
    
    /*
     *
     * 边界初始化UITextField
     * @param placeStr: 占位文字
     * @param placeColor: 占位文字颜色
     * @param fontSize: 字体大小
     * @param textColor: 字体颜色
     *
     */
    convenience init(placeStr: String,
                     placeColor: UIColor,
                     fontSize: CGFloat,
                     tColor: UIColor
    )  {
        self.init()
        font = Font(fontSize)
        textColor = tColor
        let placeholserAttributes = [NSAttributedString.Key.foregroundColor : placeColor, NSAttributedString.Key.font : Font(fontSize)]
        attributedPlaceholder = NSAttributedString(string: placeStr,attributes: placeholserAttributes)
    }
}
