//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Sina Rabiei on 12/6/20.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(background: .systemPurple, title: "GitHub Profile")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile()
    }
}
