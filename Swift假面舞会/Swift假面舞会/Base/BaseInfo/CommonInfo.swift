//
//  CommonInfo.swift
//  Swift假面舞会
//
//  Created by suckerl on 2019/12/10.
//  Copyright © 2019 suckerl. All rights reserved.
//

import UIKit


/*
 * 字体颜色
 */
let ColorText_2: UIColor = UIColor(hex: 222222)
let ColorText_3: UIColor = UIColor(hexStr: "#333333")
let ColorText_6: UIColor = UIColor(hex: 666666)
let ColorText_8: UIColor = UIColor(hex: 888888)
let ColorText_9: UIColor = UIColor(hex: 999999)
let ColorPlaceHolder: UIColor = UIColor(hexStr: "#AAAAAA")
let BaseBlueColor: UIColor = UIColor(hexStr: "#5943FC")




/*
 * 宽度和高度适配
 */
//高度适配
public func Height( _ origin : CGFloat) -> CGFloat {
    let fitHeight: CGFloat = (origin / 667.000) * UIScreen.main.bounds.size.height
    return fitHeight
}
//宽度适配
public func Width( _ origin: CGFloat) -> CGFloat {
    let fitWidth: CGFloat = (origin / 375.000) * UIScreen.main.bounds.size.width
    return fitWidth
}



/*
 * 字体适配
 * 本质是根据宽度适配
*/
public func Font( _ origin : CGFloat) -> UIFont {
    let font: UIFont = UIFont.systemFont(ofSize: Width(origin))
    return font
}
