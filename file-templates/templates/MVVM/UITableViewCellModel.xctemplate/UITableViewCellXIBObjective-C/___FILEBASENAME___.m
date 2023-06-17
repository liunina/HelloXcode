//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()
@property (nonatomic, weak) IBOutlet UIView *containerView;
@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - private

- (void)onUpdateUIComponents {
    
}

- (void)onSetupBinding {
    [self onUpdateUIComponents];
}

#pragma mark - setter

- (void)setCellModel:(___VARIABLE_productName___Model *)cellModel {
    if (_cellModel != cellModel) {
        _cellModel = cellModel;
        [self onSetupBinding];
    }
}

@end
