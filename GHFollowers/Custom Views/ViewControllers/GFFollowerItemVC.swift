//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Sina Rabiei on 12/6/20.
//


import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, with: user.followers)
        itemInfoViewOne.set(itemInfoType: .following, with: user.following)
        actionButton.set(background: .systemGreen, title: "Get Followers")
    }
}
