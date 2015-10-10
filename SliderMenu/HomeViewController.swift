//
//  HomeViewController.swift
//  SliderMenu
//
//  Created by xly on 15-6-23.
//  Copyright (c) 2015年 Lily. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var titleOfOtherPages = ""
    
    @IBOutlet var panGesture: UIPanGestureRecognizer!
    @IBOutlet weak var segmentView: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentView.selectedSegmentIndex = 0
        self.navigationItem.titleView = segmentView

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showOtherPages"{
            if let otherPageViewController = segue.destinationViewController as? OtherPageViewController{
                otherPageViewController.pageTitle = titleOfOtherPages
            }
        }
        
    }


}
