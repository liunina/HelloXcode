//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import ComposableArchitecture

struct ___VARIABLE_MODULENAME___Environment {

}

enum ___VARIABLE_MODULENAME___Module {}

extension ___VARIABLE_MODULENAME___Module {
    static var reducer: Reducer<___VARIABLE_MODULENAME___State, ___VARIABLE_MODULENAME___Action, ___VARIABLE_MODULENAME___Environment> {
        .init { state, action, environment in
            return .none
        }
    }
}