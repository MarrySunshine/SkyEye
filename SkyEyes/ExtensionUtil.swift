//
//  ExtensionUtil.swift
//  SkyEyes
//
//  Created by 鲁厶维 on 2016/11/18.
//  Copyright © 2016年 鲁厶维. All rights reserved.
//

import Foundation

let dateFormatter = DateFormatter()

extension Date {
    func format(dateFormat: String) -> String {
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.string(from: self)
    }
}
