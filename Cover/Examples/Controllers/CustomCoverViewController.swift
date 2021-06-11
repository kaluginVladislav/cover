//
//  CustomCoverViewController.swift
//  Cover
//
//  Created by Vladislav Kalugin on 11.06.2021.
//

import UIKit

class CustomCoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showCover(title: "Print some text for title", subtitle: "Print some text for subtitle", footnote: "Print some text for footnote", image: UIImage(named: "application.logo"), actions: [.autoRecall(.init(timeInterval: 1, repeats: true, block: { (Timer) in
            print("Check Network Connection")
            Timer.invalidate()
        }))])
    }
}
