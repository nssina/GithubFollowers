//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Sina Rabiei on 12/4/20.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache
    let placeHolderImage = Images.avatarPlaceholder

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func downloadAvatarImage(fromURL url: String) {
        NetworkManager.shared.donwloadImage(from: url) { [weak self] (image) in
            guard let self = self else { return }
            DispatchQueue.main.async { self.image = image }
        }
    }
}
