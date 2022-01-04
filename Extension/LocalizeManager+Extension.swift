//
//  LocalizeManager+Extension.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/27.
//

import Foundation
import Localize_Swift

/// 读取一个对应值的本地化文件子
/// - Parameter keyName: 值
/// - Returns: 对应的语言
func L(_ keyName : String) -> String
{
//   return NSLocalizedString(import Localize_Swift, comment: keyName);
    return NSLocalizedString(keyName, comment: "")
}
