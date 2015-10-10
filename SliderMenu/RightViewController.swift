//
//  RightViewController.swift
//  SliderMenu
//
//  Created by xly on 15-6-26.
//  Copyright (c) 2015年 Lily. All rights reserved.
//

import UIKit

class RightViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var titlesDictionary = ["我的收藏","美食相册","积分商城","品牌馆会员","服务中心","关于我们","鼓励一下"]
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.layer.cornerRadius = 0.5
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.frame = CGRectMake(0, 0, 320 * 0.78, Common.screenHeight)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("rightTableCell", forIndexPath: indexPath) as UITableViewCell
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel!.text = titlesDictionary[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var viewController = UIApplication.sharedApplication().keyWindow?.rootViewController as ViewController
        
        viewController.homeViewController.titleOfOtherPages = titlesDictionary[indexPath.row]
        viewController.homeViewController.performSegueWithIdentifier("showOtherPages", sender: self)
        
        viewController.showHome()
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
