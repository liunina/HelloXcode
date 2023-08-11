//___FILEHEADER___

import UIKit

// 视图代理
@objc protocol ___FILEBASENAMEASIDENTIFIER___Delegate: AnyObject {

        /// 示例代码
    /// - Parameter cell: 视图
    @objc optional func onExampleAction(_ cell: ___FILEBASENAMEASIDENTIFIER___)
}

// 列表视图数据源
@objc protocol ___FILEBASENAMEASIDENTIFIER___ModelProvider: AnyObject {
    
    /// 页面内部的交互事件代理
    var providerDelegate: ___FILEBASENAMEASIDENTIFIER___ModelDelegate? { get }

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
    private var model: AnyObject
       
    // MARK: - Init
    
    /// 通过模型构造识图模型
    init(model: AnyObject) {
        self.model = model
    }
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___ModelProvider

extension ___FILEBASENAMEASIDENTIFIER___Model: ___FILEBASENAMEASIDENTIFIER___ModelProvider {

    var providerDelegate: ___FILEBASENAMEASIDENTIFIER___Delegate? { 
        return self
    }

    var rowHeight: CGFloat {
        return 44.0
    }
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___Delegate

extension ___FILEBASENAMEASIDENTIFIER___Model: ___FILEBASENAMEASIDENTIFIER___Delegate {
    func onExampleAction(_ cell: ___FILEBASENAMEASIDENTIFIER___) {
        // do something
    }
}
