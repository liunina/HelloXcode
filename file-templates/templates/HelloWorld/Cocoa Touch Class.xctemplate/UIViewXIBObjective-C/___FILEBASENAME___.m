//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()
@property (nonatomic, weak) IBOutlet UIView *contentView;
@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"___FILEBASENAMEASIDENTIFIER___" owner:self options:nil] objectAtIndex:0];
        self.frame = frame;
        self.contentView.frame = frame;
    }
    return self;
}

+ (instancetype)createFromNib {
    ___FILEBASENAMEASIDENTIFIER___ *view = [[[NSBundle mainBundle] loadNibNamed:@"___FILEBASENAMEASIDENTIFIER___" owner:self options:nil] objectAtIndex:0];
    return view;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

@end
