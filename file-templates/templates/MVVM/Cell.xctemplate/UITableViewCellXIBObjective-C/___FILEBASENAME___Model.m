//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___VARIABLE_productName:identifier___Model ()
@property (nonatomic, strong) NSObject *model;
@end

@implementation ___VARIABLE_productName___Model

- (instancetype)initWithModel:(NSObject *)model {
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

@end
