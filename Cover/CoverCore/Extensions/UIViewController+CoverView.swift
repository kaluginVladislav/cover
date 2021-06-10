//
//  UIViewController+CoverView.swift
//  Cover
//
//  Created by Vladislav Kalugin on 10.06.2021.
//

import UIKit

extension UIViewController {

    @discardableResult func showCover(attributedTitle: NSAttributedString?, attributedSubtitle: NSAttributedString? = nil, attributedFootnote: NSAttributedString? = nil, image: UIImage? = nil, actions: [CoverView.Action] = []) -> CoverView {
        return view.showCover(attributedTitle: attributedTitle, attributedSubtitle: attributedSubtitle, attributedFootnote: attributedFootnote, image: image, actions: actions)
    }

    @discardableResult func showCover(title: String?, subtitle: String? = nil, footnote: String? = nil, image: UIImage? = nil, actions: [CoverView.Action] = []) -> CoverView {
        return view.showCover(title: title, subtitle: subtitle, footnote: footnote, image: image, actions: actions)
    }

    ///     Hides all  view in the form of cover from current controller view.
    ///
    func hideCover() {
        view.hideCover()
    }

    ///     Hides view in the form of cover from current controller view.
    ///
    ///     - parameters:
    ///        - coverView: The cover view.
    ///
    func hideCover(coverView: CoverView) {
        view.hideCover(coverView: coverView)
    }
}

