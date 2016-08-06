//
//  ViewController.swift
//  PinterestIndicatorProject
//
//  Created by gustavo nascimento on 8/6/16.
//  Copyright © 2016 Gustavo. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let indicator = PinterestLikeActivityIndicator(frame: CGRectMake(0, 0, 50, 50))
        indicator.center = view.center
        self.view.addSubview(indicator)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



