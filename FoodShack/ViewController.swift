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
        
        self.topViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.mainThumbViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.buttonViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.bottomViewHolder.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
        
        self.views["topViewHolder"] = topViewHolder
        self.views["mainThumbViewHolder"] = mainThumbViewHolder
        self.views["buttonViewHolder"] = buttonViewHolder
        self.views["bottomViewHolder"] = bottomViewHolder
        
        setConstraints()
    }
    
    func setConstraints(){
        
        /** TOP VIEW HOLDER **/
        // V means Vertical
        // | means from the superview
        // -0- means that the constraint from the top
        // name of the view and 50 pixels heigth
        // theres no constraint in the leading part
        addConstraint(format: "V:|-[topViewHolder(50)]")
        
        //horizontal
        // 0 margin from the left and from the right
        addConstraint(format: "H:|-0-[topViewHolder]-0-|")
        
        NSLayoutConstraint.activate(self.constraints)
    }
    
    func addConstraint(format: String){
        
        let newConstraints =  NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: nil, views: self.views)
        
        self.constraints += newConstraints
    }
    
    
}

