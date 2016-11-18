//
//  SEIntersectionsLinks.swift
//  SkyEyes
//
//  Created by 鲁厶维 on 2016/11/17.
//  Copyright © 2016年 鲁厶维. All rights reserved.
//

import Foundation
import RealmSwift

enum LinkType : Int {
    case NoChoise
    case GoStraight
    case TurnLeft
    case TurnRight
}

class SEIntersectionsLinks: Object {
    private dynamic var _type = LinkType.GoStraight.rawValue
    var type: LinkType {
        get { return LinkType(rawValue: _type)! }
        set { _type = newValue.rawValue }
    }
    
    dynamic var fromNode: SEIntersectionsNodes?
    dynamic var toNode: SEIntersectionsNodes?
    let video = LinkingObjects(fromType: SEVideo.self, property: "links")
}
