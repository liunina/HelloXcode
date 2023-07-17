//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import UIKit
import SnapKit

final class ___VARIABLE_productName:identifier___View: UIView {
    
    // MARK: - Private properties
    
    private var viewModel: ___VARIABLE_productName:identifier___ViewModel? {
        didSet {
            setupBindings()
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
        tableView.backgroundColor = .white
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

    // MARK: - Public
    
    func reloadData() {
         self.tableView.reloadData()
//        DispatchQueue.main.dispatchMainIfNeeded { [weak self] in
//            guard let self = self else { return }
//            
//        }
    }
    
    // MARK: - UIComponents

    func addUIComponents() {
        addSubview(contentView)
        contentView.addSubview(tableView)
    }
    
    func layoutUIComponents() {
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }

        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
 
    func setupBindings() {
        onUpdateUIComponents()
    }

    func onUpdateUIComponents() {
        guard let viewModel = self.viewModel else { return }
    }

}

// MARK: - UITableViewDataSource & UITableViewDelegate

extension ___VARIABLE_productName:identifier___View: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return self.viewModel?.numberOfSections() ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel?.numberOfRowsInSection(section) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "___VARIABLE_productName___Cell", for: indexPath) as! ___VARIABLE_productName___Cell
//        let cell = tableView.dequeueReusableCellClass(for: indexPath) as ___VARIABLE_productName___Cell
        cell.selectionStyle = .none
        guard let cellModel = self.viewModel?.itemForRowAt(indexPath) else {
            return cell
        }
        
        cell.datasource = cellModel
        cell.delegate = cellModel.delegate
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.viewModel?.heightForRowAt(indexPath) ?? 0.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
