//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___Model.h"
#import <Masonry/Masonry.h>

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

#pragma mark - setter

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
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView.mas_top).offset(0);
            make.left.equalTo(self.contentView.mas_left).offset(0);
            make.right.equalTo(self.contentView.mas_right).offset(0);
            make.bottom.equalTo(self.contentView.mas_bottom).offset(0);
        }];
        _containerView = view;
    }
    return _containerView;
}

@end
