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
@objc protocol ___VARIABLE_productName:identifier___ViewModelDelegate: AnyObject {

    @objc optional func doSomething()
}

/// 列表视图模型
final class ___VARIABLE_productName:identifier___ViewModel {
    
    // MARK: - Inputs
    
    weak var delegate: ___VARIABLE_productName:identifier___ViewModelDelegate?
    
    /// cellModel构成的数组
    private var cellModels: [AnyObject] = [] // 示例代码
    
    // MARK: - Outputs

    // MARK: - Init

    init() {

    }
}

// MARK: - ___VARIABLE_productName:identifier___ViewModelDatasource

extension ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelDatasource {

  func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.cellModels.count
    }
    
    func itemForRowAt(_ indexPath: IndexPath) -> Any? {
        if indexPath.row < self.cellModels.count {
            return self.cellModels[indexPath.row]
        }
        return nil
    }
    
    func heightForRowAt(_ indexPath: IndexPath) -> CGFloat {
        let item = itemForRowAt(indexPath)
//        return item.rowHeight
        return 44.0
    }
}