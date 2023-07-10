//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import UIKit
import SnapKit

final class ___VARIABLE_productName:identifier___View: UIView {
    
    // MARK: - Private properties
    
    var viewModel: ___VARIABLE_productName:identifier___ViewModel? {
        didSet {
            onSetupBindings()
        }
    }

    @IBOutlet private var contentView: UIView!
    
    // MARK: - Init

    convenience init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.init(frame: .zero)
        self.viewModel = viewModel
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        onLoadNibUIComponents()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        onLoadNibUIComponents()
    }

    // MARK: - Private methods

    // 加载nib文件视图
    private func onLoadNibUIComponents() {
        let name = String(describing: type(of: self))
        let bundle = Bundle(for: Self.self)
        let nib = UINib(nibName: name, bundle: bundle)
        nib.instantiate(withOwner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        onInitUIComponents() // 初始化UI组件
    }

    // 初始化默认属性配置
    private func onInitUIComponents() {

    }

    // MARK: - UIComponents
 
    // UI更新
    private func onUpdateUIComponents() {

    }
    
    // 数据绑定
    private func onSetupBindings() {
        guard let _ = self.viewModel else { return }
        onUpdateUIComponents()
    }
}