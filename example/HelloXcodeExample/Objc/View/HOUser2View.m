//
//  HOUser2View.m
//  HelloXcodeExample
//
//  Created by Anakin on 2025/2/3.
//

#import "HOUser2View.h"
#import <Masonry/Masonry.h>

@implementation HOUser2View

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
@interface HOUser22View : UIView
@property (nonatomic, strong) UIView *contentView;
@end

@implementation HOUser22View

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self onInitUIComponents];
        [self onLayoutUIComponents];
        [self onDataBindings];
    }
    return self;
}

#pragma mark - private

- (void)onInitUIComponents {
    [self addSubview:self.contentView];
    self.contentView.backgroundColor = [UIColor blueColor];
}

- (void)onLayoutUIComponents {
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}

- (void)onUpdateUIComponents {
    // TODO: implement
}

- (void)onDataBindings {
    
}


#pragma mark - getter
- (UIView *)contentView {
    if (!_contentView) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
        _contentView = view;
    }
    return _contentView;
}

@end
