//
//  ViewController.swift
//  Swift-Project-03
//
//  Created by 耿功发 on 2017/3/16.
//  Copyright © 2017年 Appcoda. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bannerView = ADBannerView(frame: CGRect(x: 0, y: self.view.frame.size.height-50, width: self.view.frame.size.width, height: 50))
        bannerView.delegate = self
        
        self.canDisplayBannerAds = true
        self.view.addSubview(bannerView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bannerViewDidLoadAd(_ banner: ADBannerView!) {
        print("Banner loaded")
    }
}

