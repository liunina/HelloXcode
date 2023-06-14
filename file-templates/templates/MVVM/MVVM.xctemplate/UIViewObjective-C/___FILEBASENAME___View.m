//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___FILEBASENAME___ViewModel.h"

@interface ___VARIABLE_productName:identifier___View ()
@property (nonatomic, strong) ___VARIABLE_productName___ViewModel *viewModel;

@end

@implementation ___VARIABLE_productName___View

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithViewModel:(___VARIABLE_productName___ViewModel *)viewModel {
    self = [super init];
    if (self) {
        self.viewModel = viewModel;
    }
    return self;
}

#pragma mark - private

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

@end
