//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___ViewModel.h"
#import "___VARIABLE_productName___View.h"
#import <Masonry/Masonry.h>

@interface ___VARIABLE_productName___ViewController ()
@property (nonatomic, strong) ___VARIABLE_productName___ViewModel *viewModel;
@property (nonatomic, strong) ___VARIABLE_productName___View *productView;
@end

@implementation ___VARIABLE_productName___ViewController

- (instancetype)initWithViewModel:(___VARIABLE_productName___ViewModel *)viewModel {
    self = [super init];
    if (self) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - getter
- (___VARIABLE_productName___View *)productView {
    if (!_productView) {
        ___VARIABLE_productName___View *view = [[___VARIABLE_productName___View alloc] initWithFrame:CGRectZero];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop).offset(0);
            make.left.equalTo(self.view.mas_left);
            make.right.equalTo(self.view.mas_right);
            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom).offset(0);
        }];
        _productView = view;
    }
    return _productView;
}

@end
