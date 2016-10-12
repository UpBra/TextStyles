//
//  TextStyleTableViewCell.swift
//  Copyright © 2016 gleesh. All rights reserved.
//

import UIKit


protocol TextStylePresenter {
    func configure(with textStyle: UIFontTextStyle)
}


class TextStyleTableViewCell: UITableViewCell { }


extension TextStyleTableViewCell: TextStylePresenter {

    func configure(with textStyle: UIFontTextStyle) {
        guard let textLabel = textLabel else { return }

        let font = UIFont.preferredFont(forTextStyle: textStyle)
        textLabel.font = font

        textLabel.text = textStyle.rawValue
    }
}
