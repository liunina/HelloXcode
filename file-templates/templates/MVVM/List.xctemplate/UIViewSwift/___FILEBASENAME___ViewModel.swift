//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import Foundation

/// 数据源
protocol ___VARIABLE_productName:identifier___ViewModelDatasource {
    func numberOfSections() -> Int
    
    func numberOfRowsInSection(_ section: Int) -> Int
    
    func itemForRowAt(_ indexPath: IndexPath) -> Any?
    
    func heightForRowAt(_ indexPath: IndexPath) -> CGFloat
}

/// 代理
protocol ___VARIABLE_productName:identifier___ViewModelDelegate: AnyObject {
    
}

/// 列表视图模型
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
    func numberOfSections() -> Int {
        return 0
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return 0
    }
    
    func itemForRowAt(_ indexPath: IndexPath) -> Any? {
        return nil
    }
    
    func heightForRowAt(_ indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
}