//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UITableViewCell {
    
    // MARK: - Porperties

    public var provider: ___FILEBASENAMEASIDENTIFIER___ModelProvider? {
        didSet {
            setupBindings()
        }
    }
    
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
        guard let provider = self.provider else { return }
        // Configure components for provider
    }
}
