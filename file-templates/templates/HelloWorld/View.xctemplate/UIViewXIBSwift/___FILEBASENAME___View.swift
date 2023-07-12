//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import UIKit
import SnapKit

final class ___VARIABLE_productName:identifier___View: UIView {
    
    // MARK: - Private properties
  
    @IBOutlet private var contentView: UIView!
    
    // MARK: - Init
    
    public override init(frame: CGRect = .zero) {
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
    
}