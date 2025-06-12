//
//  SubItem.swift
//  FlourishFinances
//
//  Created by Scholar on 6/12/25.
//

import Foundation
import SwiftData
@Model
class SubItem {
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false) {
          self.title = title
          self.isImportant = isImportant
    }
}
