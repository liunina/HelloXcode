//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___VARIABLE_productName:identifier___ViewModel ()
@property (nonatomic, strong) NSObject *model;
@property (nonatomic, strong) NSMutableArray <NSObject *>*cellModels;
@end

@implementation ___VARIABLE_productName___ViewModel

- (instancetype)initWithModel:(NSObject *)model {
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

#pragma mark - ___VARIABLE_productName:identifier___ViewModelDatasource

- (NSInteger)numberOfSections {
    return 1;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return self.cellModels.count;
}

- (id)itemForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row < self.cellModels.count) {
        return self.cellModels[indexPath.row];
    }
    return nil;
}

- (CGFloat)heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = [self itemForRowAtIndexPath:indexPath];
//    return item.rowHeight;
    return 44;
}

- (void)onSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = [self itemForRowAtIndexPath:indexPath];
}

#pragma mark - getter/setter

- (NSMutableArray *)cellModels {
    if (!_cellModels) {
        _cellModels = @[].mutableCopy;
    }
    return _cellModels;
}

@end
