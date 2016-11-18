//
//  SEIntersectionsNodes.swift
//  SkyEyes
//
//  Created by 鲁厶维 on 2016/11/17.
//  Copyright © 2016年 鲁厶维. All rights reserved.
//

import Foundation
import RealmSwift

class SEIntersectionsNodes: Object {
    dynamic var x = 0
    dynamic var y = 0
    
    let video = LinkingObjects(fromType: SEVideo.self, property: "nodes")
}
