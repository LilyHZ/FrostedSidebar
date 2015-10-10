//
//  LeftViewController.swift
//  SliderMenu
//
//  Created by xly on 15-6-23.
//  Copyright (c) 2015年 Lily. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    var titlesDictionary = ["开通会员","QQ钱包","网上营业厅","个性装扮","我的收藏","我的相册","我的文件"]

    @IBOutlet weak var settingTableView: UITableView!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingTableView.delegate = self
        settingTableView.dataSource = self
        settingTableView.tableFooterView = UIView()
        
        self.view.frame = CGRectMake(0, 0, 320 * 0.78, Common.screenHeight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var viewController = UIApplication.sharedApplication().keyWindow?.rootViewController as ViewController
        
        viewController.homeViewController.titleOfOtherPages = titlesDictionary[indexPath.row]
        viewController.homeViewController.performSegueWithIdentifier("showOtherPages", sender: self)
        
        viewController.showHome()
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("leftViewCell", forIndexPath: indexPath) as UITableViewCell
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel!.text = titlesDictionary[indexPath.row]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
