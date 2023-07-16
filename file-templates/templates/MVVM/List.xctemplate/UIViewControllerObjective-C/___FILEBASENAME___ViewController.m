//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___ViewModel.h"
#import "___VARIABLE_productName___View.h"
#import <Masonry/Masonry.h>

@interface ___VARIABLE_productName___ViewController ()<___VARIABLE_productName___ViewModelInteractionProvider>
@property (nonatomic, strong) ___VARIABLE_productName___ViewModel *viewModel;
@property (nonatomic, strong) ___VARIABLE_productName___View *mainView;
@end

@implementation ___VARIABLE_productName___ViewController

- (instancetype)initWithViewModel:(___VARIABLE_productName___ViewModel *)viewModel {
    self = [super init];
    if (self) {
        self.viewModel = viewModel;
        self.viewModel.interactionProvider = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - ___VARIABLE_productName___ViewModelInteractionProvider

- (UIViewController *)interactionViewController {
    return self;
}

#pragma mark - getter
- (___VARIABLE_productName___View *)mainView {
    if (!_mainView) {
        ___VARIABLE_productName___View *view = [[___VARIABLE_productName___View alloc] initWithViewModel:self.viewModel];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop).offset(0);
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom).offset(0);
        }];
        _mainView = view;
    }
    return _mainView;
}

@end
