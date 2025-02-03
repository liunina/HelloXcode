//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___CellModel.h"
#import <Masonry/Masonry.h>

@interface ___VARIABLE_productName___Cell ()
/// 容器视图
@property (nonatomic, strong) UIView *containerView;
@end

@implementation ___VARIABLE_productName___Cell

#pragma mark - private

- (void)onUpdateUIComponents {
    
}

- (void)onDataBindings {
    [self onUpdateUIComponents];
}

#pragma mark - setter

- (void)setCellModel:(___VARIABLE_productName___CellModel *)cellModel {
    if (_cellModel != cellModel) {
        _cellModel = cellModel;
        [self onDataBindings];
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
