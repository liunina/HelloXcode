//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import UIKit
import SnapKit

final class ___VARIABLE_productName:identifier___View: UIView {
    
    // MARK: - Private properties
    
    private var viewModel: ___VARIABLE_productName:identifier___ViewModel {
        didSet {
            onDataBindings()
        }
    }

    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .singleLine
        tableView.rowHeight = 48
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = 0
        } else {
            // Fallback on earlier versions
        }
        tableView.separatorInset = UIEdgeInsets(top:0, left:0, bottom: 0, right: 0)
        tableView.contentInset = UIEdgeInsets(top:0, left:0, bottom: 0, right:0)
        tableView.separatorColor = UIColor(red: 219/255.0, green: 219/255.0, blue: 219/255.0, alpha: 1)
        tableView.register(___VARIABLE_productName___Cell.self, forCellReuseIdentifier:"___VARIABLE_productName___Cell")
//        tableView.registerClass(___VARIABLE_productName___Cell.self)
        return tableView
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

    func onInitUIComponents() {
        addSubview(contentView)
        contentView.addSubview(tableView)
    }
    
    func onLayoutUIComponents() {
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }

        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func onUpdateUIComponents() {

    }

    func onDataBindings() {
        onUpdateUIComponents()
        self.viewModel.reloadSubject.subscribe { [weak self] ret in
            guard let self = self else { return }
            self.reloadData()
        }.disposed(by: disposeBag)
    }
}

// MARK: - Public

extension ___VARIABLE_productName:identifier___View {

    func reloadData() {
        onUpdateUIComponents()
        self.tableView.reloadData()
//        DispatchQueue.main.dispatchMainIfNeeded { [weak self] in
//            guard let self = self else { return }
//            
//        }
    }
}

// MARK: - UITableViewDataSource & UITableViewDelegate

extension ___VARIABLE_productName:identifier___View: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "___VARIABLE_productName___Cell", for: indexPath) as! ___VARIABLE_productName___Cell
        cell.selectionStyle = .none
        guard let cellModel = viewModel.itemForRowAt(indexPath) else {
            return cell
        }
        
        cell.cellModel = cellModel
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt(indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewModel.onDidSelectRowAt(indexPath)
    }

}
