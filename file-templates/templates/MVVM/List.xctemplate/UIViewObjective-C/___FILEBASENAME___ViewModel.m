//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___VARIABLE_productName:identifier___ViewModel ()
@property (nonatomic, strong) <#type#> *model;
@end

@implementation ___VARIABLE_productName___ViewModel

- (instancetype)initWithModel:(<#type#>)model {
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

@end
