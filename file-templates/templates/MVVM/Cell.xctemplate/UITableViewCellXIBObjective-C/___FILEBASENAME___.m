//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___Model.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()
@property (nonatomic, weak) IBOutlet UIView *containerView;
@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self onInitUIComponents];
}

#pragma mark - private

- (void)onInitUIComponents {
    // To do 
}

- (void)onUpdateUIComponents {
    
}

- (void)onSetupBinding {
    [self onUpdateUIComponents];
}

#pragma mark - setter

- (void)setCellModel:(___VARIABLE_productName___Model *)cellModel {
    if (_cellModel != cellModel) {
        _cellModel = cellModel;
        [self onSetupBinding];
    }
}

@end
