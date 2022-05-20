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
