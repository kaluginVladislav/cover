//
//  String+Localization.swift
//  Cover
//
//  Created by Vladislav Kalugin on 10.06.2021.
//

import Foundation

extension String {

    var localized: String {
        return NSLocalizedString(self, tableName: "Localization", value: self, comment: "")
    }

    func localized(_ args: CVarArg...) -> String {
        return String(format: self.localized, arguments: args)
    }
}
