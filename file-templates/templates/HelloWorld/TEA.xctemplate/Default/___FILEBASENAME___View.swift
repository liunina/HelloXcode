import ComposableArchitecture
import SwiftUI

struct ___VARIABLE_MODULENAME___View: View {
    let store: Store<___VARIABLE_MODULENAME___State, ___VARIABLE_MODULENAME___Action>
    @ObservedObject var viewStore: ViewStore<___VARIABLE_MODULENAME___State, ___VARIABLE_MODULENAME___Action>

    init(store: Store<___VARIABLE_MODULENAME___State, ___VARIABLE_MODULENAME___Action>) {
        self.store = store
        self.viewStore = ViewStore(store)
    }

    var body: some View {
        WithViewStore(store) { viewStore in
             Content(viewStore)
                .onAppear {
                    viewStore.send(.onAppear)
                }
                .onDisappear {
                    viewStore.send(.onDisappear)
                }
        }
    }
}

// MARK: - Views
extension ___VARIABLE_MODULENAME___View {
    
    @ViewBuilder
    private func Content(_ viewStore: ViewStore<___VARIABLE_MODULENAME___State, ___VARIABLE_MODULENAME___Action>) -> some View {
        Text("Hello \(___VARIABLE_MODULENAME___)!")
    }
}