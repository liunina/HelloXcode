//___FILEHEADER___

import UIKit

// 视图代理
@objc protocol ___VARIABLE_productName___Delegate: AnyObject {

        /// 示例代码
    /// - Parameter cell: 视图
    @objc optional func onExampleAction(_ cell: ___VARIABLE_productName___)
}

// 列表视图数据源
@objc protocol ___VARIABLE_productName___ModelProvider: AnyObject {
    
    /// 页面内部的交互事件代理
    var providerDelegate: ___VARIABLE_productName___Delegate? { get }

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
    private var model: AnyObject
       
    // MARK: - Init
    
    /// 通过模型构造识图模型
    init(model: AnyObject) {
        self.model = model
    }
}

// MARK: - ___VARIABLE_productName___ModelProvider

extension ___VARIABLE_productName___Model: ___VARIABLE_productName___ModelProvider {

    var providerDelegate: ___VARIABLE_productName___Delegate? { 
        return self
    }

    var rowHeight: CGFloat {
        return 44.0
    }
}

// MARK: - ___VARIABLE_productName___Delegate

extension ___VARIABLE_productName___Model: ___VARIABLE_productName___Delegate {
    func onExampleAction(_ cell: ___VARIABLE_productName___) {
        // do something
    }
}

