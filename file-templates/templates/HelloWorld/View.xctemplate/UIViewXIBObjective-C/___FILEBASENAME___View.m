//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___VARIABLE_productName:identifier___View ()
@property (nonatomic, weak) IBOutlet UIView *contentView;

@end

@implementation ___VARIABLE_productName___View

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

@end
