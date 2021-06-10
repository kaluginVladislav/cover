//
//  UIView+CoverView.swift
//  Cover
//
//  Created by Vladislav Kalugin on 10.06.2021.
//

import UIKit

extension UIView {

    @discardableResult func showCover(attributedTitle: NSAttributedString?, attributedSubtitle: NSAttributedString? = nil, attributedFootnote: NSAttributedString? = nil, image: UIImage? = nil, actions: [CoverView.Action] = []) -> CoverView {
        let coverView = CoverView(attributedTitle: attributedTitle, attributedSubtitle: attributedSubtitle, attributedFootnote: attributedFootnote, image: image, actions: actions)

        return showCover(coverView: coverView)
    }

    @discardableResult func showCover(title: String?, subtitle: String? = nil, footnote: String? = nil, image: UIImage? = nil, actions: [CoverView.Action] = []) -> CoverView {
        let coverView = CoverView(title: title, subtitle: subtitle, footnote: footnote, image: image, actions: actions)

        return showCover(coverView: coverView)
    }

    @discardableResult func showCover(coverView: CoverView) -> CoverView {
        addSubview(coverView)

        coverView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: coverView.topAnchor),
            leftAnchor.constraint(equalTo: coverView.leftAnchor),
            bottomAnchor.constraint(equalTo: coverView.bottomAnchor),
            rightAnchor.constraint(equalTo: coverView.rightAnchor)
        ])

        return coverView
    }

    ///     Hides all  view in the form of cover from current view.
    ///
    func hideCover() {
        for case let coverView as CoverView in subviews {
            coverView.removeFromSuperview()
        }
    }

    ///     Hides view in the form of cover from current view.
    ///
    ///     - parameters:
    ///        - coverView: The cover view.
    ///
    func hideCover(coverView: CoverView) {
        coverView.removeFromSuperview()
    }
}
