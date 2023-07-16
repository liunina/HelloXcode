//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___ViewModel.h"
#import <Masonry/Masonry.h>

@interface ___VARIABLE_productName:identifier___View ()
@property (nonatomic, strong) ___VARIABLE_productName___ViewModel *viewModel;
@property (nonatomic, strong) UIView *contentView;

@end

@implementation ___VARIABLE_productName___View

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self onInitUIComponents];
    }
    return self;
}

- (instancetype)initWithViewModel:(___VARIABLE_productName___ViewModel *)viewModel {
    self = [super init];
    if (self) {
        self.viewModel = viewModel;
        [self onInitUIComponents];
    }
    return self;
}

#pragma mark - private

- (void)onInitUIComponents {
    // TODO: implement
    self.contentView.backgroundColor = [UIColor blueColor];
}

- (void)onUpdateUIComponents {
    // TODO: implement
}

- (void)onSetuBinding {
    [self onUpdateUIComponents];
    // binding implement
}

#pragma mark - getter/setter
- (void)setViewModel:(___VARIABLE_productName___ViewModel *)viewModel {
    if (_viewModel != viewModel) {
        _viewModel = viewModel;
        [self onSetuBinding];
    }
}

- (UIView *)contentView {
    if (!_contentView) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
        [self addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
        }];
        _contentView = view;
    }
    return _contentView;
}

@end
