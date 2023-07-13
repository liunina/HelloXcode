//___FILEHEADER___

import UIKit

// 列表视图数据源
protocol ___FILEBASENAMEASIDENTIFIER___Datasource: NSObjectProtocol {
    
    /// 行高
    var rowHeight: CGFloat { get }
}

// 列表代理
@objc protocol ___FILEBASENAMEASIDENTIFIER___Delegate: NSObjectProtocol {
    
    /// 列表视图点击选中事件
    /// - Parameters:
    ///   - cell: 列表视图
    ///   - cellModel: 列表视图模型
    @objc optional func cell(_ cell: ___VARIABLE_productName___, onSelectWith cellModel: ___FILEBASENAMEASIDENTIFIER___)
}

/// 视图模型
class ___FILEBASENAMEASIDENTIFIER___: NSObject {
    
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?

    public var model: AnyObject
    
    init(model: AnyObject) {
        self.model = model
    }
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___Datasource

extension ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Datasource {
    
    var rowHeight: CGFloat {
        return 44.0
    }
}
