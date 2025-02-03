//
//  HOUserView.m
//  HelloXcodeExample
//
//  Created by Anakin on 2025/2/3.
//

#import "HOUserView.h"
#import <Masonry/Masonry.h>

@interface HOUser1View : UIView
@property (nonatomic, strong) UIView *contentView;
@end

@implementation HOUser1View

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
    self.contentView.backgroundColor = [UIColor blueColor];
}

- (void)onUpdateUIComponents {
    // TODO: implement
}

#pragma mark - getter
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

@implementation HOUserView
@end
