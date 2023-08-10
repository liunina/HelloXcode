//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import Foundation
import UIKit
import RxSwift

/// 数据源
protocol ___VARIABLE_productName:identifier___ViewModelDatasource {
    func numberOfSections() -> Int
    
    func numberOfRowsInSection(_ section: Int) -> Int
    
    func itemForRowAt(_ indexPath: IndexPath) -> ___VARIABLE_productName___CellModel?
    
    func heightForRowAt(_ indexPath: IndexPath) -> CGFloat
}

/// UI 交互的协议,获取所在控制器,进行页面调整或者push
@objc protocol ___VARIABLE_productName___ViewModelInteractionProvider: AnyObject {

    /// 基本上是所在的可以进行页面跳转路由的控制器
    /// - Returns: 导航或者交互使用的控制器
    @objc optional func interactionViewController() -> UIViewController
}

/// 代理
@objc protocol ___VARIABLE_productName:identifier___ViewModelDelegate: AnyObject {

    @objc optional func doSomething()
}

/// 列表视图模型
final class ___VARIABLE_productName:identifier___ViewModel {
    
    // MARK: - Inputs
    
    weak var interactionProvider: ___VARIABLE_productName___ViewModelInteractionProvider?
    weak var delegate: ___VARIABLE_productName:identifier___ViewModelDelegate?
    
    /// cellModel构成的数组
    private var cellModels: [___VARIABLE_productName___CellModel] = [] // 示例代码
    /// 页面刷新事件
    let reloadSubject: PublishSubject<Bool> = .init()

    // MARK: - Outputs

    // MARK: - Init

    init() {
        onInit()
    }
    
    /// 初始化
    private func onInit() {
        var cellModels = [___VARIABLE_productName___CellModel]()
        for _ in 0...20 {
            let cellModel = ___VARIABLE_productName___CellModel(model: self)
            cellModels.append(cellModel)
        }
        self.cellModels.append(contentsOf: cellModels)
    }
    
    private func reload() {
        reloadSubject.onNext(true)
    }
   
    // MARK: - Public

    func onRefresh() {    
        reload()
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
    
    func itemForRowAt(_ indexPath: IndexPath) -> ___VARIABLE_productName___CellModel? {
        if indexPath.row < self.cellModels.count {
            return self.cellModels[indexPath.row]
        }
        return nil
    }
    
    func heightForRowAt(_ indexPath: IndexPath) -> CGFloat {
        guard let cellModel = itemForRowAt(indexPath) else {
            return 44
        }
        return cellModel.rowHeight
    }
}