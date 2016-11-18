//
//  VideoTableViewCell.swift
//  SkyEyes
//
//  Created by 鲁厶维 on 2016/11/18.
//  Copyright © 2016年 鲁厶维. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {
    
    static var nib: UINib { get { return UINib(nibName: "VideoTableViewCell", bundle: nil) } }
    static var reuseId: String { get { return "videoTableViewCell" } }
    
    var video: SEVideo?
        {
        didSet {
            nameLabel.text = video?.name
            authorLabel.text = video?.author
            positionLabel.text = video?.position
            videoTimeLabel.text = (video?.videoTime)?.format(dateFormat: "yyyy-MM-dd hh:mm")
        }
    }

    @IBOutlet weak var screenshotImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var videoTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
