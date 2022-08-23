//
//  FollowedUserCollectionViewCell.swift
//  Habits
//
//  Created by elliott on 8/23/22.
//

import UIKit

class FollowedUserCollectionViewCell: PrimarySecondaryTextCollectionViewCell {
    @IBOutlet var separatorLineView: UIView!
    @IBOutlet var separatorLineHeightConstraint: NSLayoutConstraint?
    
    override func awakeFromNib() {
        separatorLineHeightConstraint?.constant = 1 / UITraitCollection.current.displayScale
    }
}
