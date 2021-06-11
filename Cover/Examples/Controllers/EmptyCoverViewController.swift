//
//  EmptyCoverViewController.swift
//  Cover
//
//  Created by Vladislav Kalugin on 11.06.2021.
//

import UIKit

class EmptyCoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showCover(preset: .empty, image: UIImage(named: "application.logo"))
    }
}
