//___FILEHEADER___

import UIKit

// 列表视图数据源
protocol ___VARIABLE_productName___CellModelDatasource: NSObjectProtocol {
    
    /// 行高
    var rowHeight: CGFloat { get }
}

// 列表代理
@objc protocol ___VARIABLE_productName___CellModelDelegate: NSObjectProtocol {
    
    /// 列表视图点击选中事件
    /// - Parameters:
    ///   - cell: 列表视图
    ///   - cellModel: 列表视图模型
    @objc optional func cell(_ cell: ___VARIABLE_productName___Cell, onSelectWith cellModel: ___VARIABLE_productName___CellModel)
}

/// 视图模型
class ___VARIABLE_productName___CellModel: NSObject {
    
    weak var delegate: ___VARIABLE_productName___CellModelDelegate?

    public var model: AnyObject
    
    init(model: AnyObject) {
        self.model = model
    }
}

// MARK: - ___VARIABLE_productName___CellModelDatasource

extension ___VARIABLE_productName___CellModel: ___VARIABLE_productName___CellModelDatasource {
    
    var rowHeight: CGFloat {
        return 44.0
    }
}
