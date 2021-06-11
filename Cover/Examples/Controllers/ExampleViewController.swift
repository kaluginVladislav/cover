//
//  ViewController.swift
//  Cover
//
//  Created by Vladislav Kalugin on 10.06.2021.
//

import UIKit

enum Example: CaseIterable {
    case empty
    case custom
    case error
    case criticalError

    var title: String {
        switch self {
        case .empty:
            return "Empty Cover"
        case .custom:
            return "Custom Cover"
        case .error:
            return "Error cover"
        case .criticalError:
            return "Critical Error Cover"
        }
    }
}

class ExampleViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ExampleViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Example.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExapmplesTableTableViewCell") as! ExapmplesTableTableViewCell
        let example = Example.allCases[indexPath.row]
        cell.exampleTextLabel.text = example.title

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let example = Example.allCases[indexPath.row]
        let viewController = createViewController(for: example)
        viewController.title = example.title
        
        viewController.view.backgroundColor = .white
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func createViewController(for example: Example) -> UIViewController {
        switch example {
        case .empty:
            return EmptyCoverViewController(nibName: nil, bundle: nil)
        case .custom:
            return CustomCoverViewController(nibName: nil, bundle: nil)
        case .error:
            return ErrorCoverViewController(nibName: nil, bundle: nil)
        case .criticalError:
            return CriticalErrorCoverViewController(nibName: nil, bundle: nil)
        }
    }
}


