//
//  ViewController.swift
//  FoodShack
//
//  Created by Vasco Gomes on 29/03/2017.
//  Copyright © 2017 Vasco Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let burgerBtn = UIButton()
    let pizzaBtn = UIButton()
    let sandwitchBtn = UIButton()
    let tacoBtn = UIButton()
    let orderNowBtn = UIButton()
    let selectedItemThumbImg = UIImageView(image: UIImage(named:"burger"))
    let topViewHolder = UIView()
    let mainThumbViewHolder = UIView()
    let buttonViewHolder = UIView()
    let bottomViewHolder = UIView()
    let topThumbBtn = UIButton()
    let topTitleLbl =  UILabel()
    
    var views = Dictionary<String,AnyObject>()
    var constraints = [NSLayoutConstraint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.purple
        self.topViewHolder.backgroundColor = UIColor.white
        self.mainThumbViewHolder.backgroundColor = UIColor(displayP3Red: 220.0/255.0, green: 224.0/255.0, blue: 210.0/255.0, alpha: 1.0)
        self.buttonViewHolder.backgroundColor = UIColor(displayP3Red: 242.0/255.0, green: 241.0/255.0, blue: 239.0/255.0, alpha: 1.0)
        self.bottomViewHolder.backgroundColor =  UIColor(displayP3Red: 39.0/255.0, green: 61.0/255.0, blue: 72.0/255.0, alpha: 1.0)
        
        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
    }
}

