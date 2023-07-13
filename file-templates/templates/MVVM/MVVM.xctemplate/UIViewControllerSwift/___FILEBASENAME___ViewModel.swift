//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import Foundation

// 数据源
protocol ___VARIABLE_productName:identifier___ViewModelDatasource: AnyObject {
    
}

// 代理
@objc protocol ___VARIABLE_productName:identifier___ViewModelDelegate: AnyObject {
    
    // 示例代码
    @objc optional func doSomething()
}

final class ___VARIABLE_productName:identifier___ViewModel {
    
    // MARK: - Inputs
    
    weak var delegate: ___VARIABLE_productName:identifier___ViewModelDelegate?
    
    // MARK: - Outputs

    // MARK: - Init

    init() {

    }
}

// MARK: - ___VARIABLE_productName:identifier___ViewModelDatasource

extension ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelDatasource {
    
}