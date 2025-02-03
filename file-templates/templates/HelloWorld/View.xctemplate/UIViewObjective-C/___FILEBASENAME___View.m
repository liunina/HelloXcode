//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import <Masonry/Masonry.h>

@interface ___VARIABLE_productName:identifier___View ()
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

#pragma mark - private

- (void)onInitUIComponents {
    // TODO: implement
    self.contentView.backgroundColor = [UIColor systemCyanColor];
}

- (void)onUpdateUIComponents {
    // TODO: implement
}

- (void)onDataBindings {
    [self onUpdateUIComponents];
    // binding implement
}

#pragma mark - getter/setter

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
