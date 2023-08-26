//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import Foundation
import RxSwift

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
    /// 页面刷新事件
    let reloadSubject: PublishSubject<Bool> = .init()

    // MARK: - Outputs

    // MARK: - Init

    init() {

    }

    /// 刷新页面事件
    private func reloadUI() {
        reloadSubject.onNext(true)
    }
}

// MARK: - ___VARIABLE_productName:identifier___ViewModelDatasource

extension ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelDatasource {
    
}