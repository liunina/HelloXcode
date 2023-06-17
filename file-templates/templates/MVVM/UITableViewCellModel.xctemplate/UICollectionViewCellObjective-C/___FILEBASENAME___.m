//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()
/// 容器视图
@property (nonatomic, strong) UIView *containerView;

@end
@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - private

- (void)onUpdateUIComponents {
    
}

- (void)onSetupBinding {
    [self onUpdateUIComponents];
}

#pragma mark - setter/getter

- (void)setCellModel:(___VARIABLE_productName___Model *)cellModel {
    if (_cellModel != cellModel) {
        _cellModel = cellModel;
        [self onSetupBinding];
    }
}

- (UIView *)containerView {
    if (!_containerView) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:view];
        _containerView = view;
    }
    return _containerView;
}

@end
