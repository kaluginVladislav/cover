//
//  CriticalErrorCoverViewController.swift
//  Cover
//
//  Created by Vladislav Kalugin on 11.06.2021.
//

import UIKit

class CriticalErrorCoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        showCover(preset: .criticalError(.none))
    }
}
