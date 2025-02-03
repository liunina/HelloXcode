//
//  Untitled.swift
//  HelloXcodeExample
//
//  Created by Anakin on 2025/2/3.
//
class HXUserView: UIView {
    
    /// 容器视图
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    // MARK: - override
    
    override open var intrinsicContentSize: CGSize {
        return .zero
    }
    
    // MARK: - UIComponents
    
    /// 构建和添加UI组件
    func onInitUIComponents() {
        addSubview(contentView)
    }
    
    /// 布局UI组件
    func onLayoutUIComponents() {
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }
    }
    
    /// 更新UI组件
    func onUpdateUIComponents() {
        
    }
    
    /// 数据绑定
    func onDataBindings() {
        onUpdateUIComponents()
    }
}
