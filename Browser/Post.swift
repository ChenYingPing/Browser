//
//  Post.swift
//  Browser
//
//  Created by Chen on 16/6/16.
//  Copyright © 2016年 ChenYingPing. All rights reserved.
//

import UIKit

class Post: NSObject
{
    var postTitle: String = ""
    var postURL: String = ""
    
    init(dictionary: Dictionary<String, String>) {
        self.postTitle = dictionary["postTitle"]!
        self.postURL = dictionary["postURL"]!
        super.init()
    }
}