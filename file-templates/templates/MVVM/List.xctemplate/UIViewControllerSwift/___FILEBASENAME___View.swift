//  ___FILEHEADER___
//  Summary: ___VARIABLE_Summary___

import UIKit

final class ___VARIABLE_productName:identifier___View: UIView {
    
    // MARK: - Private properties
    
    private var viewModel: ___VARIABLE_productName:identifier___ViewModel {
        didSet {
            setupBindings()
        }
    }
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        tableView.rowHeight = 48
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = 0
        } else {
            // Fallback on earlier versions
        }
        tableView.separatorInset = UIEdgeInsets(top:0, left:0, bottom: 0, right: 0)
        tableView.contentInset = UIEdgeInsets(top:0, left:0, bottom: 0, right:0)
        tableView.separatorColor = UIColor(red: 219/255.0, green: 219/255.0, blue: 219/255.0, alpha: 1)
        tableView.register(<#Cell#>.self, forCellReuseIdentifier:<#Cell#>.className)
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
        DispatchQueue.main.dispatchMainIfNeeded { [weak self] in
            guard let self = self else { return }
            self.tableView.reloadData()
        }
    }
    
    // MARK: - UIComponents
    
    func addUIComponents() {
        addSubview(tableView)
    }
    
    func layoutUIComponents() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func onUpdateUIComponents() {
        guard let viewModel = self.viewModel else { return }
    }
    
    func setupBindings() {
        onUpdateUIComponents()
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
        guard let item = self.viewModel?.itemForRowAt(indexPath) else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.viewModel?.heightForRowAt(indexPath) ?? 0.0
    }
}
