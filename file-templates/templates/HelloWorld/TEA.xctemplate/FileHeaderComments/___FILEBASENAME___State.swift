//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import SwiftUI
import ComposableArchitecture

struct ___VARIABLE_MODULENAME___State: Equatable {
    let id = UUID()
}

// MARK: - Equatable
extension ___VARIABLE_MODULENAME___State {
    static func == (lhs: ___VARIABLE_MODULENAME___State, rhs: ___VARIABLE_MODULENAME___State) -> Bool {
        return lhs.id == rhs.id
    }
}