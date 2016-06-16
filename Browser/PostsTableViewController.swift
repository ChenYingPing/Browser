//
//  PostsTableViewController.swift
//  Browser
//
//  Created by Chen on 16/6/16.
//  Copyright © 2016年 ChenYingPing. All rights reserved.
//

import UIKit

class PostsTableViewController: UITableViewController {

    var posts: [Post] = []
    
    @IBAction func cancel(sender: AnyObject) {
         dismissViewControllerAnimated(true, completion: nil)
    }
    override init(style: UITableViewStyle) {
        super.init(style: style)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Recent Articles"
        tableView.reloadData()
    }
    
    override func numberOfSectionsInTableView(tableView:
        UITableView?) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("postCell", forIndexPath: indexPath) as UITableViewCell
        let post = posts[indexPath.row]
        cell.textLabel?.text = post.postTitle
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let post = posts[indexPath.row]
        NSNotificationCenter.defaultCenter().postNotificationName(PostSelected, object: post)
        dismissViewControllerAnimated(true, completion: nil)
    }
}
