//___FILEHEADER___

import UIKit

// 列表视图数据源
protocol ___FILEBASENAMEASIDENTIFIER___ModelDatasource {

    /// 行高
    var rowHeight: CGFloat { get }
}

// 视图模型代理
@objc protocol ___FILEBASENAMEASIDENTIFIER___ModelDelegate: AnyObject {
    
    /// 列表视图点击选中事件
    /// - Parameters:
    ///   - cell: 列表视图
    ///   - cellModel: 列表视图模型
    @objc optional func cell(_ cell: ___FILEBASENAMEASIDENTIFIER___, onSelectWith cellModel: ___FILEBASENAMEASIDENTIFIER___Model)
}

/// 视图模型
class ___FILEBASENAMEASIDENTIFIER___Model: NSObject {
    
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___ModelDelegate?
    
    /// 模型
    var model: AnyObject
       
    // MARK: - Init
    
    /// 通过模型构造识图模型
    init(model: AnyObject) {
        self.model = model
    }
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___ModelDatasource

extension ___FILEBASENAMEASIDENTIFIER___Model: ___FILEBASENAMEASIDENTIFIER___ModelDatasource {

    var rowHeight: CGFloat {
        return 44.0
    }
}
