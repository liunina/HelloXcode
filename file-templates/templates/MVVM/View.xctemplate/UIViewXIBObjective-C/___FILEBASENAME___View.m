//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___ViewModel.h"

@interface ___VARIABLE_productName:identifier___View ()
@property (nonatomic, strong) ___VARIABLE_productName___ViewModel *viewModel;
@property (nonatomic, weak) IBOutlet UIView *contentView;

@end

@implementation ___VARIABLE_productName___View

+ (instancetype)instancetypeViewModel:(___VARIABLE_productName___ViewModel *)viewModel {
    ___FILEBASENAMEASIDENTIFIER___ *view = [[[NSBundle mainBundle] loadNibNamed:@"___FILEBASENAMEASIDENTIFIER___" owner:self options:nil] objectAtIndex:0];
    view.frame = CGRectZero;
    view.viewModel = viewModel;
    return view;
}

+ (instancetype)instancetypeWithFrame:(CGRect)frame {
    ___FILEBASENAMEASIDENTIFIER___ *view = [[[NSBundle mainBundle] loadNibNamed:@"___FILEBASENAMEASIDENTIFIER___" owner:self options:nil] objectAtIndex:0];
    view.frame = frame;
    return view;
}

#pragma mark - override

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self onInitUIComponents];
}

#pragma mark - private

- (void)onInitUIComponents {
    // TODO: implement
    self.contentView.backgroundColor = [UIColor systemCyanColor];
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

@end
