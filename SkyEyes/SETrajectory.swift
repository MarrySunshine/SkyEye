//
//  SETrajectory.swift
//  SkyEyes
//
//  Created by 鲁厶维 on 2016/11/17.
//  Copyright © 2016年 鲁厶维. All rights reserved.
//

import Foundation
import RealmSwift

class SETrajectory: Object {
    dynamic var x = 0
    dynamic var y = 0
    dynamic var vehicleId = Int64()
    dynamic var timestamp = NSDate()

    dynamic var video : SEVideo?
}
