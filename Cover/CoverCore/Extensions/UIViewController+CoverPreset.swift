//
//  UIViewController+CoverPreset.swift
//  Cover
//
//  Created by Vladislav Kalugin on 10.06.2021.
//

import UIKit

extension UIViewController {

    @discardableResult func showCover(preset: CoverPreset, attributedTitle: NSAttributedString?, attributedSubtitle: NSAttributedString? = nil, attributedFootnote: NSAttributedString? = nil, image: UIImage? = nil, actions: [CoverView.Action] = []) -> CoverView {
        return view.showCover(preset: preset, attributedTitle: attributedTitle, attributedSubtitle: attributedSubtitle, attributedFootnote: attributedFootnote, image: image, actions: actions)
    }

    @discardableResult func showCover(preset: CoverPreset, title: String? = nil, subtitle: String? = nil, footnote: String? = nil, image: UIImage? = nil, actions: [CoverView.Action] = []) -> CoverView {
        return view.showCover(preset: preset, title: title, subtitle: subtitle, footnote: footnote, image: image, actions: actions)
    }
}
