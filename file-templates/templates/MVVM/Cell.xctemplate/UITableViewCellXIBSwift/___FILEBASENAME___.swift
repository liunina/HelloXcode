//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {
    
    // MARK: - Porperties

    public var datasource: ___FILEBASENAMEASIDENTIFIER___ModelDatasource? {
        didSet {
            setupBindings()
        }
    }
    
    public var delegate: ___FILEBASENAMEASIDENTIFIER___ModelDelegate?
    
    /// 容器视图
    @IBOutlet var containerView: UIView!

    // MARK: - override
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        onInitUIComponents()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    // MARK: - UIComponents
    
    public func onInitUIComponents() {

    }

    public func setupBindings() {
        onUpdateUIComponents()
    }
    
    public func onUpdateUIComponents() {
        guard let datasource = self.datasource else { return }
        // Configure components for datasource
    }
}
