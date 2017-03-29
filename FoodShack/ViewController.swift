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
        
        self.topThumbBtn.setImage(UIImage(named:"burger"), for: .normal)
        self.topTitleLbl.text = "FOOD SHACK"
        self.topTitleLbl.textColor = UIColor(displayP3Red: 39.0/255.0, green: 61.0/255.0, blue: 72.0/255.0, alpha: 1.0)
        
        self.burgerBtn.setImage(UIImage(named:"burger"), for: .normal)
        self.pizzaBtn.setImage(UIImage(named:"pizza"), for: .normal)
        self.sandwitchBtn.setImage(UIImage(named:"sandwich"), for: .normal)
        self.tacoBtn.setImage(UIImage(named:"taco"), for: .normal)
        
        self.topViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.mainThumbViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.buttonViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.bottomViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.topThumbBtn.translatesAutoresizingMaskIntoConstraints = false
        self.topTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        self.selectedItemThumbImg.translatesAutoresizingMaskIntoConstraints =  false
        self.burgerBtn.translatesAutoresizingMaskIntoConstraints = false
        self.pizzaBtn.translatesAutoresizingMaskIntoConstraints = false
        self.sandwitchBtn.translatesAutoresizingMaskIntoConstraints = false
        self.tacoBtn.translatesAutoresizingMaskIntoConstraints =  false

        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
        
        self.topViewHolder.addSubview(self.topThumbBtn)
        self.topViewHolder.addSubview(self.topTitleLbl)
        
        self.mainThumbViewHolder.addSubview(self.selectedItemThumbImg)
        
        self.buttonViewHolder.addSubview(self.burgerBtn)
        self.buttonViewHolder.addSubview(self.pizzaBtn)
        self.buttonViewHolder.addSubview(self.sandwitchBtn)
        self.buttonViewHolder.addSubview(self.tacoBtn)
        
        self.views["topViewHolder"] = topViewHolder
        self.views["mainThumbViewHolder"] = mainThumbViewHolder
        self.views["buttonViewHolder"] = buttonViewHolder
        self.views["bottomViewHolder"] = bottomViewHolder
        self.views["topThumbBtn"] = topThumbBtn
        self.views["topTitleLbl"] = topTitleLbl
        self.views["selectedItemThumbImg"] = selectedItemThumbImg
        self.views["burgerBtn"] = burgerBtn
        self.views["pizzaBtn"] = pizzaBtn
        self.views["sandwitchBtn"] = sandwitchBtn
        self.views["tacoBtn"] = tacoBtn
        
        setConstraints()
    }
    
    func setConstraints(){
        
        /** TOP VIEW HOLDER **/
        // V means Vertical
        // | means from the superview
        // -0- means that the constraint from the top
        // name of the view and 50 pixels heigth
        // 0 pixels from the trailing edge of topViewHolder
        //after it appears the next view "mainThumbViewHolder"
        addConstraint(format: "V:|-[topViewHolder(50)]-0-[mainThumbViewHolder]")
        
        //horizontal
        // 0 margin from the left and from the right
        addConstraint(format: "H:|-0-[topViewHolder]-0-|")
        
        /** MAIN VIEW HOLDER **/
        addConstraint(format: "V:[mainThumbViewHolder(<=250@250)]-0-[buttonViewHolder]")
        addConstraint(format: "V:[mainThumbViewHolder(>=150@250)]")
        //0 pixels to the left and to the right
        //same width of the topViewholder
        addConstraint(format: "H:|-0-[mainThumbViewHolder(==topViewHolder)]-0-|")
        
        /** MAIN BUTTON HOLDER **/
        addConstraint(format: "V:[buttonViewHolder(<=200)]-0-[bottomViewHolder]")
        addConstraint(format: "V:[buttonViewHolder(>=100)]")
        addConstraint(format: "H:|-0-[buttonViewHolder(==mainThumbViewHolder)]-0-|")
        
        /** BOTTOM VIEW HOLDER **/
        // @250 - lowpriority
        addConstraint(format: "V:[bottomViewHolder(50)]-|")
        addConstraint(format: "H:|-0-[bottomViewHolder(==buttonViewHolder)]-0-|")
        
        /** TOP THUMB BUTTON **/
        addConstraint(format: "V:|-5-[topThumbBtn(40)]")
        addConstraint(format: "H:|-5-[topThumbBtn(40)]-10-[topTitleLbl]")

        /** TOP TITLE LABEL **/
        addConstraint(format: "V:|-5-[topTitleLbl(40)]")
        addConstraint(format: "H:[topTitleLbl(>=50)]")
        
        /** SELECTED THUMB IMAGE**/
        addConstraint(format: "V:|-15-[selectedItemThumbImg(200@250)]-25-|")
        addConstraint(format: "H:|-25-[selectedItemThumbImg(200@250)]-25-|")
        
        /** BURGER BUTTON **/
        addConstraint(format: "V:|-15-[burgerBtn(75)]")
        addConstraint(format: "H:|-40-[burgerBtn(75)]")
        
        /** PIZZA BUTTON **/
        addConstraint(format: "V:[pizzaBtn(75)]-15-|")
        addConstraint(format: "H:|-40-[pizzaBtn(75)]")
        
        /** SANDWITCH BUTTON **/
        addConstraint(format: "V:|-15-[sandwitchBtn(75)]")
        addConstraint(format: "H:[sandwitchBtn(75)]-40-|")
        
        /** TACO BUTTON **/
        addConstraint(format: "V:[tacoBtn(75)]-15-|")
        addConstraint(format: "H:[tacoBtn(75)]-40-|")

        NSLayoutConstraint.activate(self.constraints)
    }
    
    func addConstraint(format: String){
        
        let newConstraints =  NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: nil, views: self.views)
        
        self.constraints += newConstraints
    }
    
    
}

