//___FILEHEADER___

import UIKit
import SnapKit

class ___VARIABLE_productName___Cell: UITableViewCell {
    
    public var cellModel: ___VARIABLE_productName___CellModel? {
        didSet {
            setupBindings()
        }
    }
    
    /// 容器视图
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    // MARK: - UIComponents
    
    public func addUIComponents() {
        contentView.addSubview(containerView)
    }
    
    public func layoutUIComponents() {
        containerView.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }
    }

    public func setupBindings() {
        onUpdateUIComponents()
    }
    
    public func onUpdateUIComponents() {
        guard let cellModel = self.cellModel else { return }
        // Configure components for provider
    }

}
