//___FILEHEADER___

import UIKit
import SnapKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {

    // MARK: - Porperties
    
    public var cellModel: ___VARIABLE_productName___Model? {
        didSet {
            onDataBindings()
        }
    }
    
    /// 容器视图
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    // MARK: - UIComponents
    
    public func onInitUIComponents() {
        contentView.addSubview(containerView)
    }
    
    public func onLayoutUIComponents() {
        containerView.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }
    }
 
    public func onUpdateUIComponents() {
        guard let cellModel = self.cellModel else { return }
        // Configure components for provider
    }
    
    public func onDataBindings() {
        onUpdateUIComponents()
    }
   

}
