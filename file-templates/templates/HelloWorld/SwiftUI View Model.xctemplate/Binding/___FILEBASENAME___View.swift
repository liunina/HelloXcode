//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//
//  Summary: ___VARIABLE_Summary___
// 

import SwiftUI

struct ___VARIABLE_productName:identifier___View: View {

    // viewModel
    @ObservedObject var viewModel: ___VARIABLE_productName:identifier___ViewModel

    var body: some View {
        Text("\(viewModel.text)")
    }
}

struct ___VARIABLE_productName:identifier___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_productName:identifier___View(viewModel: ___VARIABLE_productName:identifier___ViewModel())
    }
}