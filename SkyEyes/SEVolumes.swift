//
//  SEVolumes.swift
//  SkyEyes
//
//  Created by 鲁厶维 on 2016/11/17.
//  Copyright © 2016年 鲁厶维. All rights reserved.
//

import Foundation
import RealmSwift

class SEVolumes: Object {
    dynamic var volume = 0
    
    dynamic var video: SEVideo?
    dynamic var link: SEIntersectionsLinks?
}
