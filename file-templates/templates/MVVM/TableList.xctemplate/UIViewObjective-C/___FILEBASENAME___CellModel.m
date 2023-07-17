//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___VARIABLE_productName___CellModel ()
@property (nonatomic, strong) NSObject *model;
@end

@implementation ___VARIABLE_productName___CellModel

- (instancetype)initWithModel:(NSObject *)model {
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

#pragma mark - ___VARIABLE_productName___CellModelDatasource

- (CGFloat)rowHeight {
    return 44.0;
}

@end
