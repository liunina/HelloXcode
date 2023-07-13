//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___ViewModel.h"
#import <Masonry/Masonry.h>

@interface ___VARIABLE_productName:identifier___View ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) ___VARIABLE_productName___ViewModel *viewModel;
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UITableView *tableView;
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
}

- (void)onUpdateUIComponents {
    // TODO: implement
}

- (void)onSetuBinding {
    [self onUpdateUIComponents];
    // binding implement
}

#pragma mark - Public

- (void)reloadData {
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource & UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.viewModel numberOfSections];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = [self.viewModel itemForRowAtIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"" forIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self.viewModel heightForRowAtIndexPath:indexPath];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.viewModel onSelectRowAtIndexPath:indexPath];
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

- (UITableView *)tableView {
    if (!_tableView) {
        UITableView *view = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        view.dataSource = self;
        view.delegate = self;
        view.backgroundColor = [UIColor whiteColor];
        view.showsVerticalScrollIndicator   = NO;
        view.showsHorizontalScrollIndicator = NO;
        view.separatorStyle = UITableViewCellSeparatorStyleNone;
        [view registerClass:[UITableViewCell class] forCellReuseIdentifier:@""];
        
        if(@available(iOS 11.0, *)) {
            view.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
        if (@available(iOS 15.0, *)) {
            view.sectionHeaderTopPadding = 0;
        } else {
            // Fallback on earlier versions
        }
        [self.contentView addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView.mas_top).offset(0);
            make.left.equalTo(self.contentView.mas_left).offset(0);
            make.right.equalTo(self.contentView.mas_right).offset(0);
            make.bottom.equalTo(self.contentView.mas_bottom).offset(0);
        }];
        _tableView = view;
    }
    return _tableView;
}

@end
