//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___VARIABLE_productName:identifier___ViewModel ()
@property (nonatomic, strong) NSObject *model;
@end

@implementation ___VARIABLE_productName___ViewModel

- (instancetype)initWithModel:(NSObject *)model {
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

#pragma mark - ___VARIABLE_productName___ViewModelDatasource

@end
