//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//
//  Summary: ___VARIABLE_Summary___
// 

import Foundation

extension ___VARIABLE_VIEWNAME___ {
    final class ViewModel: ObservableObject {
        private let model: Any
        @Published var text: String = "Hello, World!"
        @Published private (set) var actions: [Int] = []
       
        init(model: Any) {
            self.model = model
            onInit()
        }
    }
}

// MARK: - Public

extension ___VARIABLE_VIEWNAME___.ViewModel {
    // TODO: Replace me
    @MainActor
    func doSomething() async {
        do {
            actions = [1, 2, 3]
        } catch {
            // Error handling
        }
    }
}

// MARK: - Private

private extension ___VARIABLE_VIEWNAME___.ViewModel {
    func onInit() {}
}