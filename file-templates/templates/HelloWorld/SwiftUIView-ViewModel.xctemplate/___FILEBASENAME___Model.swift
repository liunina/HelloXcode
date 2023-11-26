//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

extension ___VARIABLE_ViewName___ {
    final class ViewModel: ObservableObject {
        private let dependencies: Dependencies

        init(dependencies: Dependencies = .default) {
            self.dependencies = dependencies
        }
    }
}

extension ___VARIABLE_ViewName___.ViewModel {
    struct Dependencies {
        // TODO: Add dependencies here
        var doSomething: () async throws -> Void

        static var `default`: Self {
            .init {
                // TODO: Provide the default dependencies here
                return
            }
        }
    }
}

extension ___VARIABLE_ViewName___.ViewModel {
    // TODO: Replace me
    @MainActor
    func doSomething() async {
        do {
            try await dependencies.doSomething()
        } catch {
            // Error handling
        }
    }
}

private extension ___VARIABLE_ViewName___.ViewModel {

}