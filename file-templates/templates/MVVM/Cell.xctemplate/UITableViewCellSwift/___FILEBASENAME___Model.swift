//___FILEHEADER___

import UIKit

// 列表视图数据源
protocol ___VARIABLE_productName___ModelDatasource {
    
    /// 行高
    var rowHeight: CGFloat { get }
}

// 视图模型代理
@objc protocol ___VARIABLE_productName___ModelDelegate: AnyObject {
    
    /// 列表视图点击选中事件
    /// - Parameters:
    ///   - cell: 列表视图
    ///   - cellModel: 列表视图模型
    @objc optional func cell(_ cell: ___VARIABLE_productName___, onSelectWith cellModel: ___VARIABLE_productName___Model)
}

/// 视图模型
class ___VARIABLE_productName___Model: NSObject {
    
    weak var delegate: ___VARIABLE_productName___ModelDelegate?

    /// 模型
    var model: AnyObject
       
    // MARK: - Init
    
    /// 通过模型构造识图模型
    init(model: AnyObject) {
        self.model = model
    }
}

// MARK: - ___VARIABLE_productName___ModelDatasource

extension ___VARIABLE_productName___Model: ___VARIABLE_productName___ModelDatasource {

    var rowHeight: CGFloat {
        return 44.0
    }
}
