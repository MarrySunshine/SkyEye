//
//  SEVideo.swift
//  SkyEyes
//
//  Created by 鲁厶维 on 2016/11/17.
//  Copyright © 2016年 鲁厶维. All rights reserved.
//

import Foundation
import RealmSwift

class SEVideo: Object {
    dynamic var author = ""
    dynamic var fileUrl = ""
    dynamic var name = ""
    dynamic var position = ""
    private dynamic var _videoTime = NSDate()
    var videoTime: Date {
        get { return _videoTime as Date }
        set { _videoTime = newValue as NSDate }
    }
    
    let links = List<SEIntersectionsLinks>()
    let nodes = List<SEIntersectionsNodes>()
    
    convenience init(author: String, fileUrl: String, name: String, position: String, videoTime: Date) {
        self.init()
        self.author = author
        self.fileUrl = fileUrl
        self.name = name
        self.position = position
        self.videoTime = videoTime
    }
    
    static func addVideo(video: SEVideo) {
        try? RealmService.realmInstance.write {
            RealmService.realmInstance.add(video)
        }
    }
    
    static func getVideos() -> Results<SEVideo> {
        return RealmService.realmInstance.objects(SEVideo.self)
    }
}
