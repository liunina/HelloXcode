//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___View.h"
#import "___VARIABLE_productName___ViewModel.h"
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
        ProductView *view = [[ProductView alloc] initWithFrame:CGRectZero];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.inset(0);
        }];
        _productView = view;
    }
    return _productView;
}

@end
