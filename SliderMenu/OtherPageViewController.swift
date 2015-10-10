//
//  OtherPageViewController.swift
//  SliderMenu
//
//  Created by xly on 15-6-23.
//  Copyright (c) 2015年 Lily. All rights reserved.
//

import UIKit

class OtherPageViewController: UIViewController {

    var pageTitle:String!//从homeViewController  传递过来的值
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = pageTitle
        mainLabel.text = pageTitle
        
        // 自定义返回按钮
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "く返回", style: UIBarButtonItemStyle.Plain, target: self, action: "goBack")
    }
    
    func goBack(){
        self.navigationController?.popViewControllerAnimated(true)//Returns the popped controller.
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
