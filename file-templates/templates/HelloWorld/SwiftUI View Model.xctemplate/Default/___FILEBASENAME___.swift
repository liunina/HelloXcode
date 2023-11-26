//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//
//  Summary: ___VARIABLE_Summary___
// 

import SwiftUI

struct ___VARIABLE_VIEWNAME___: View {
   @StateObject private var viewModel: ViewModel = ViewModel()

    var body: some View {
        Text("\(viewModel.text)")
    }
}

struct ___VARIABLE_VIEWNAME____Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ___VARIABLE_VIEWNAME___()
        }
    }
}