//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import UIKit
import SnapKit

final class ___VARIABLE_productName:identifier___View: UIView {
    
    // MARK: - Private properties
    
    private var viewModel: ___VARIABLE_productName:identifier___ViewModel {
        didSet {
            setupBindings()
        }
    }
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()

    // MARK: - Init

    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIComponents

    // 视图加载
    func addUIComponents() {
        addSubview(contentView)
    }
    
    // 布局
    func layoutUIComponents() {
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }
    }

    // 数据绑定
    func setupBindings() {
        onUpdateUIComponents()
    }

    // UI更新
    func onUpdateUIComponents() {

    }
    
}