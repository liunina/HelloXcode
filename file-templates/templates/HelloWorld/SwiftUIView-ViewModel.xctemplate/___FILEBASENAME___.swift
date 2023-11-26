//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

struct ___VARIABLE_ViewName___: View {
    @StateObject private var viewModel: ViewModel

    init(dependencies: ViewModel.Dependencies) {
        _viewModel = StateObject(
            wrappedValue: ViewModel(
                dependencies: dependencies
            )
        )
    }

    var body: some View {
        Text("___VARIABLE_ViewName___") // TODO: Replace the body
    }
}

private extension ___VARIABLE_ViewName___ {
    enum ViewConstants {
        // TODO: Add constants here
    }
}

struct ___VARIABLE_ViewName____Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ___VARIABLE_ViewName___(dependencies: .mock)
        }
    }
}