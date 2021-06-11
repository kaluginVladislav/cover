//
//  ErrorCoverViewController.swift
//  Cover
//
//  Created by Vladislav Kalugin on 11.06.2021.
//

import UIKit

class ErrorCoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showCover(preset: .error(.none))
    }
}
